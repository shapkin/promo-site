module ApplicationHelper
  def active_tab?(action)
    "class=active" if action == params[:action]
  end
end