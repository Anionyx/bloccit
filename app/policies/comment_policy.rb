class CommentPolicy < ApplicationPolicy
  def destroy?
    user.present? && (recor.user == user || user.role?(:admin) || user.role?(:moderator))
  end
end
