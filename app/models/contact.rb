class Contact < ApplicationRecord
  def friendly_updated_at
    updated_at.strftime("%m/%d/%Y")
  end

  def full_name
    full_name = "#{first_name} #{last_name}"
    full_name
  end

  def prefix_japan
    if phone_number[0..1] == "1-"
      phone_number[0..1] = ""
    end
    full_number = "+81 #{phone_number}"
    full_number
  end
end
