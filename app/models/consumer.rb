class Consumer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  require 'br_documents'


  has_one :profile_consumer
  accepts_nested_attributes_for :profile_consumer

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Quantity per Page
    qtt_per_page = 24


  # Scope
    scope :order_by_mail, ->(page) {order(:email).page(page).per(qtt_per_page)}
    scope :search, ->(q, page) {where("email LIKE ?", "%#{q}%").page(page).per(qtt_per_page)}
    scope :pesquisar, ->(q, page) {where("email LIKE ?", "%#{q}%").page(page).per(20)}

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
    elsif nested_attributes_cpf_invalid?
      errors.add(:base, "CPF inválido")
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

  def nested_attributes_cpf_invalid?
    BRDocuments::CPF.invalid?(profile_consumer.cpf)
  end

  def nested_attributes_phone_blank?
    profile_consumer.phone.blank?
  end


end