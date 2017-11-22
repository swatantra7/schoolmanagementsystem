course_with_title = YAML.load_file("#{Rails.root.to_s}/config/default_data/course.yml")
course_with_title.each do |key, val |
  c = Course.new(faculty: key, title_of_course: val.first)
  c.save
  val[1..-1].each do |value|
    c = Course.new(title_of_course: value)
    c.save
  end
end

