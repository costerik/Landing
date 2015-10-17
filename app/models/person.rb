class Person < ActiveRecord::Base
	validates :name, presence: { message: "El Nombre es requerido." }
	validates :last_name, presence: { message: "El Apellido es requerido." }
	validates :email, uniqueness: {message: "Este email existe en nuestra base de datos."}
	validate  :validate_email


	def validate_email
		unless /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i.match(email)
			errors.add(:email, "Ingrese un email valido")
		end
	end
end
