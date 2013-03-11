module ApplicationHelper

  def is_admin
    @auth.present? && @auth.is_admin
  end

  def intellinav
    links = ""

    if @auth.present?

      if @auth.is_admin
        links += "<li class='divider'></li>"
        links += "<li>#{link_to('Employees', users_path)}</li>"
      end

      links += "<li class='divider'></li>"
      links += "<li>#{link_to('Clients', clients_path)}</li>"
      links += "<li class='divider'></li>"
      links += "<li>#{link_to('Projects', projects_path)}</li>"
      links += "<li class='divider'></li>"
      links += "<li>#{link_to(@auth.first_name + ' | ' + 'Logout', login_path, :method => :delete, :confirm => "Are you sure you want to logout?")}</li>"
    else
      links += "<li class='divider'></li>"
      links += "<li>#{link_to('Sign In', login_path)}</li>"
    end
  end
end