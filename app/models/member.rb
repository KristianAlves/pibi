class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_one :profile_member
  accepts_nested_attributes_for :profile_member

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Validates
  validate :nested_attributes_member_company_name
  validate :nested_attributes_member_fantasy_name
  validate :nested_attributes_member_street
  validate :nested_attributes_member_city
  validate :nested_attributes_member_cnpj
  validate :nested_attributes_member_phone

  def nested_attributes_member_company_name
    if nested_attributes_company_name_blank?
      errors.add(:base, "Razão Social não pode ficar em branco")
    end
  end

  def nested_attributes_member_fantasy_name
    if nested_attributes_fantasy_name_blank?
      errors.add(:base, "Nome Fantasia não pode ficar em branco")
    end
  end

  def nested_attributes_member_street
    if nested_attributes_street_blank?
      errors.add(:base, "Rua não pode ficar em branco")
    end
  end

  def nested_attributes_member_city
    if nested_attributes_city_blank?
      errors.add(:base, "Cidade não pode ficar em branco")
    end
  end

  def nested_attributes_member_cnpj
    if nested_attributes_cnpj_blank?
      errors.add(:base, "CNPJ não pode ficar em branco")
    elsif nested_attributes_cnpj_invalid?
      errors.add(:base, "CNPJ inválido")
    end
  end

  def nested_attributes_member_phone
    if nested_attributes_phone_blank?
      errors.add(:base, "Telefone não pode ficar em branco")
    end
  end


  def nested_attributes_company_name_blank?
    profile_member.company_name.blank?
  end

  def nested_attributes_fantasy_name_blank?
    profile_member.fantasy_name.blank?
  end

  def nested_attributes_street_blank?
    profile_member.street.blank?
  end

  def nested_attributes_city_blank?
    profile_member.city.blank?
  end

  def nested_attributes_cnpj_blank?
    profile_member.cnpj.blank?
  end

  def nested_attributes_cnpj_invalid?
    BRDocuments::CNPJ.invalid?(profile_member.cnpj)
  end

  def nested_attributes_phone_blank?
    profile_member.phone.blank?
  end



end
