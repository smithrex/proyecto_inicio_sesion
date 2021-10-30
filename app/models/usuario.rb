class Usuario < ApplicationRecord

  validates :first_name, :last_name, :email_address, :age, presence: {message: "Este campo es requerido."}

  validates :first_name, :last_name,
  length: {minimum: 2, message: "Este campo debe tener como mínimo 2 caracteres"}

  validates :age, numericality: {
    greater_than: 9,
    less_than: 151, 
    message:"La edad ingresada debe estar entre 10 y 150."}

  validates :email_address, email: {message: "ingrese un email."}

  

end
