class Contact < ApplicationRecord
  def friendly_created_at
    return created_at.strftime("%A, %b %d")
  end

  def full_name
    return "#{first_name} #{last_name}"
  end

  def japan_phone_conv
    phone = phone_number.to_s
    return "+81 #{phone}"
  end
end
