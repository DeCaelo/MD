module UsersHelper
  def avatar_for(user, options = { size: 80 })
    size = options[:size]
    if user.try(:avatar).blank?
      image_tag "default-avatar.svg", width: size, class: 'avatar-image'
    else
      image_tag user.avatar.url(:thumb), width: size, class: 'avatar-image'
    end
  end
end
