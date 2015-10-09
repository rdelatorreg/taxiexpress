class Workwithu < ActiveRecord::Base
  validates :name, length: { minimum: 7, message: "La longitud no puede ser menor a 7 caracteres" }, format: { with: /\A[a-zA-Z ]+\z/, message: "Solo se permiten letras y espacios en blanco." }
  
  validates :age, numericality: { only_integer: true, message: "solo se permiten números" }, length: { maximum: 2, message: "No puede ingresar más de dos dígitos" }
  
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { minimum: 7, message: "La longitud no puede ser menor a 7 caracteres" },
                    format: { with: VALID_EMAIL_REGEX,message: "No es un formato de email" },
                    uniqueness: { case_sensitive: false }    
                    
  has_attached_file :document,
                    default_url: "/documents/:style/missing.png"   
                    
  validates_attachment :document,
                       presence: true,
                       content_type: { 
                         content_type: 
                         [ "application/pdf", "application/msword", "application/vnd.openxmlformats-officedocument.wordprocessingml.document" ] }                    
end
