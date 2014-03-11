require "rest-client"

class Elem < Struct.new(:element_id, :element_name, :element_type); end
class Cello::PageObjects::Recorder
  class << self
    def record args
      page_url = args.shift
      page_source = RestClient.get page_url
      title = page_source.scan(/\<title\>(.*?)\<\/title\>/)[0].to_s.gsub!(/\W+/, ' ').strip!.split(" ").each { |w| w.capitalize! }.join("")
      page = "require 'cello'\n\n"
      page += "class #{title} < Cello::PageObjects::Page\n\n"
      ary = Array.new()
      page_source.scan(/\<input(.*?)\>/).each do |raw_element|
        element_object = Elem.new nil, nil, nil
        raw_element.to_s.split(" ").each do |element| 
          element_object.element_type = element.split("=")[1].gsub!(/\W+/, '') if !element.scan(/type/).empty?
          element_object.element_name = element.split("=")[1].gsub!(/\W+/, '') if !element.scan(/name/).empty?
          element_object.element_id = element.split("=")[1].gsub!(/\W+/, '') if !element.scan(/id/).empty?
        end
        ary.push element_object if (!element_object.element_type.nil? && (!element_object.element_id.nil? || !element_object.element_name.nil?))
      end

      ary.each do |yup|
        key = ":id"
        yup.element_name = yup.element_id if yup.element_name.nil? 
        key = ":name" if yup.element_id.nil? 
        yup.element_id = yup.element_name if yup.element_id.nil? 
        page += "  element :#{yup.element_name}, :#{yup.element_type}, #{key} => '#{yup.element_id }'\n" if !yup.element_type.empty? && !yup.element_type != "hidden"
      end
      page += "\n  url(\"#{page_url}\")\n\n"
      page += "end\n"
      File.open("./features/pages/#{title}.rb", 'w') {|f| f.write( page ) }
    end
  end
end
