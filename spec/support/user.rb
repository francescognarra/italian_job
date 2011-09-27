class User
   include ActiveModel::Validations

  attr_accessor :codice_fiscale, :partita_iva, :email

  validates :codice_fiscale, :codice_fiscale_format => true
  validates :partita_iva, :partita_iva_format => true

end
