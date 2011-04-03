class Array
  def to_hash2
    h = {}
    each_pair { |k,v| h[k] = v }
    h
  end
end

def convert_object_class(object_class_name)

  case object_class_name
  when 'project'
    @oc = Project
  when 'task'
    @oc = Task
  when 'time_entry'
    @oc = TimeEntry
  else
    raise "invalid object class: <#{ARGV[0]}>"
  end
end

