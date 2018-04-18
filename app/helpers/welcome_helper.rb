module WelcomeHelper
  def link_to_social fa, source, options={}
    link_to( (image_tag("icon-light-#{fa}", class: "icon-light") + image_tag("icon-dark-#{fa}", class: "icon-dark")), source, options.merge({class: "btn btn-lg btn-outline-light p-2"}) )
  end

  def pretty_site_link site
    host = URI(site.link).host
    if host == "web.archive.org"
      host = site.name.downcase
    end
    host = "www.#{host}" unless host.include?("www.")
    host = "#{host}.com" unless host.include?(".com") or host.include?(".me")
    return host
  end
end
