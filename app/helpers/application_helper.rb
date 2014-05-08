module ApplicationHelper

  def has_many_link(instance, association, style = 'warning')
    team_tasks_label = []
    team_tasks_label << t(".#{association}", :default => t("helpers.links.#{association}"))
    team_tasks_label << '&nbsp;'
    team_tasks_label << content_tag(:span, instance.send(association).count, :class => 'badge')
    link_to(team_tasks_label.join.html_safe, url_for([instance, association]), :class => "btn btn-#{style} btn-xs")
  end


end
