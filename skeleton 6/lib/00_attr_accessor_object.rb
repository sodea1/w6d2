class AttrAccessorObject
  def self.my_attr_accessor(*names) # size
    names.each do |name|
      define_method(name) { instance_variable_get("@#{name}") }
      define_method("#{name}=") { |ivar| instance_variable_set("@#{name}", ivar) }
    end
  end
end
