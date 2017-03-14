class Contact < ApplicationRecord
  def friendly_created_at
    return created_at.strftime("%A, %b %d")
  end
end
