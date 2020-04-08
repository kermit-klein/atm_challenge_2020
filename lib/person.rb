class Person 
    attr_accessor :name, :account, :cash

def initialize(attrs= {})
@name=set_name(attrs[:name])

end
def set_name(obj)
     @owner = obj
end

end