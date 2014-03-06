require "rest-client"

class Elem < Struct.new(:element_id, :element_name, :element_type); end
class Recorder
  recorder = Recorder.new

  def get_elements page_url
    foo = RestClient.get page_url 
      title = foo.scan(/\<title\>(.*?)\<\/title\>/)[0].to_s.gsub!(/\W+/, ' ').strip!.split(" ").each { |w| w.capitalize! }.join("")
    page = "require 'cello'\n"
    page += "class #{title} < Cello::PageObjects::Page\n\n"
    ary = Array.new()
    foo.scan(/\<input(.*?)\>/).each do |raw_element|
      bar = Elem.new nil, nil, nil
      raw_element.to_s.split(" ").each do |element| 
        bar.element_type = element.split("=")[1].gsub!(/\W+/, '') if !element.scan(/type/).empty?
        bar.element_name = element.split("=")[1].gsub!(/\W+/, '') if !element.scan(/name/).empty?
        bar.element_id = element.split("=")[1].gsub!(/\W+/, '') if !element.scan(/id/).empty?
      end
      ary.push bar if (!bar.element_type.nil? && (!bar.element_id.nil? || !bar.element_name.nil?))
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
  puts page
  end
  recorder.get_elements 'https://secure.wufoo.com/gallery/install/template/29/'
end
