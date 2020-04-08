class Person 
    attr_accessor :name, :account, :cash

def initialize(attrs= {})
@name=set_name(attrs[:name])
@cash=0
@account=nil
end

def set_name(obj)
     obj== nil ? (raise "A name is required"): @owner = obj
end

end