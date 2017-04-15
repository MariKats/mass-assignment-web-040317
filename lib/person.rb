class Person

  attr_accessor :name, :birthday, :hair_color, :eye_color, :height,
  :weight, :handed, :complexion, :t_shirt_size,
  :wrist_size, :glove_size, :pant_length, :pant_width

  # .send() is another way to call a method on an object. The method called is the setter method #{attribute}= and the object is the instance of our class.  

  def initialize(attributes_hash)
    attributes_hash.each {|attribute, value| self.send(("#{attribute}="), value)}
  end

end
