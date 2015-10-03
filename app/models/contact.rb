class Contact < ActiveRecord::Base
  validates :name, length: { minimum: 7, message: "La longitud no puede ser menor a 7 caracteres" }, format: { with: /\A[a-zA-Z]+\z/, message: "Solo se permiten letras" }
  validates :email, length: { minimum: 7, message: "La longitud no puede ser menor a 7 caracteres" }
  validates :message,  length: { minimum: 10, message: "La longitud no puede ser menor a 10 caracteres"  }  
  validates :body, length: { minimum: 10, message: "La longitud no puede ser menor a 10 caracteres"  }      
end
