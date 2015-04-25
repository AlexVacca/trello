class User < ActiveRecord::Base

has_many :tasks


  validates :name , presence: true , confirmation: true
  

  validates :surname , presence: true , confirmation: true



  validates :email , presence: true , confirmation: true

  # Validamos en una expresion regular nuestro email
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, format: { :with => VALID_EMAIL_REGEX , message: "El formato del correo es invalido" }

  # Validamos que el email sea unico
  validates :email, uniqueness: {case_sensitive: false ,message: "ya esta registrado"}

end
