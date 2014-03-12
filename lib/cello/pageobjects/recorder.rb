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
      raw_element = Array.new()
      page_source.scan(/\<input(.*?)\>/).each do |raw_element|
        element_object = Elem.new nil, nil, nil
        raw_element.to_s.split(" ").each do |element| 
          element_object.element_type = element.split("=")[1].gsub!(/\W+/, '') if !element.scan(/type/).empty?
          element_object.element_name = element.split("=")[1].gsub!(/\W+/, '') if !element.scan(/name/).empty?
          element_object.element_id = element.split("=")[1].gsub!(/\W+/, '') if !element.scan(/id/).empty?
        end
        raw_element.push element_object if (!element_object.element_type.nil? && (!element_object.element_id.nil? || !element_object.element_name.nil?))
      end

      raw_element.each do |complete_element|
        key = ":id"
        complete_element.element_name = complete_element.element_id if complete_element.element_name.nil? 
        key = ":name" if complete_element.element_id.nil? 
        complete_element.element_id = complete_element.element_name if complete_element.element_id.nil? 
        page += "  element :#{complete_element.element_name}, :#{complete_element.element_type}, #{key} => '#{complete_element.element_id }'\n" if !complete_element.element_type.empty? && !complete_element.element_type != "hidden"
      end
      page += "\n  url(\"#{page_url}\")\n\n"
      page += "end\n"
      File.open("./features/pages/#{title}.rb", 'w') {|f| f.write( page ) }
    end
  end
end
