class Consumer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  has_one :profile_consumer
  accepts_nested_attributes_for :profile_consumer

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Validates
  validate :nested_attributes_consumer_name
  validate :nested_attributes_consumer_cpf
  validate :nested_attributes_consumer_phone

  def nested_attributes_consumer_name
    if nested_attributes_name_blank?
      errors.add(:base, "Nome não pode ficar em branco")
    end
  end

  def nested_attributes_consumer_cpf
    if nested_attributes_cpf_blank?
      errors.add(:base, "CPF não pode ficar em branco")
    end
  end

  def nested_attributes_consumer_phone
    if nested_attributes_phone_blank?
      errors.add(:base, "Telefone não pode ficar em branco")
    end
  end

  def nested_attributes_name_blank?
    profile_consumer.name.blank?
  end

  def nested_attributes_cpf_blank?
    profile_consumer.cpf.blank?
  end

  def nested_attributes_phone_blank?
    profile_consumer.phone.blank?
  end

end