module WelcomeHelper
  def link_to_social fa, source, options={}
    link_to "<i class='fab fa-#{fa} fa-lg fa-fw'></i>".html_safe, source, options.merge({class: "btn btn-lg btn-outline-light p-2"})
  end

  def pretty_site_link site
    host = URI(site.link).host
    if host == "web.archive.org"
      host = site.name.downcase
    end
    host = "www.#{host}" unless host.include?("www.")
    host = "#{host}.com" unless host.include?(".com")
    return host
  end
end
