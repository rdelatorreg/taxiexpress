class Contact < ActiveRecord::Base
  validates :name, length: { minimum: 7, message: "La longitud no puede ser menor a 7 caracteres" }, format: { with: /\A[a-zA-Z ]+\z/, message: "Solo se permiten letras y espacios en blanco." }
  
  validates :message,  length: { minimum: 10, message: "La longitud no puede ser menor a 10 caracteres"  }  
  validates :body, length: { minimum: 10, message: "La longitud no puede ser menor a 10 caracteres"  }      
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { minimum: 7, message: "La longitud no puede ser menor a 7 caracteres" },
                    format: { with: VALID_EMAIL_REGEX,message: "No es un formato de email" },
                    uniqueness: { case_sensitive: false }  
end
