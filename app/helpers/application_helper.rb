module ApplicationHelper
  def fullname (first, last)
    "#{first.downcase.capitalize} #{last.downcase.capitalize}"
  end
end
