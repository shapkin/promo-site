module ApplicationHelper
  def active_tab?(action)
    "class=active" if action == params[:action]
  end

  def manager?
    !current_user.nil? && current_user.admin?
  end
end