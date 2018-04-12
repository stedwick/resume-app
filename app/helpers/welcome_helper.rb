module WelcomeHelper
  def link_to_social source, fa, options={}
    link_to "<i class='fab fa-#{fa} fa-lg fa-fw'></i>".html_safe, source, options.merge({class: "btn btn-lg btn-outline-light p-2"})
  end
end
