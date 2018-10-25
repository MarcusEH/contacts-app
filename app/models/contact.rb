class Contact < ApplicationRecord
  belongs_to :user
  def friendly_updated_at
    updated_at.strftime("%m/%d/%Y")
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def prefix_japan
    if phone_number[0..1] == "1-"
      phone_number[0..1] = ""
    end
    "+81 #{phone_number}"
  end
end
