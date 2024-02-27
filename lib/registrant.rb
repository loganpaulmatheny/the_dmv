
class Registrant 
  attr_reader :name, :age, :permit, :licence_data


  def initialize(name, age, permit = false)
    @name = name
    @age = age
    @permit = permit
    @licence_data = {:written => false, :license => false, :renewed => false}
  end

  def permit?
    @permit = true
  end 

end