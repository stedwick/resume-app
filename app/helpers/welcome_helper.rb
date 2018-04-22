module WelcomeHelper
  def link_to_social fa, source, options={}
    link_to "<svg class=\"icon icon-#{fa}\"><use xlink:href=\"#icon-#{fa}\"></use></svg>".html_safe, source, options.merge({class: "btn btn-lg btn-outline-light p-2 icon-container"})
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

  # TODO
  def image_2x_or_svg img, svg, options={}
    return image_2x(img, options) if svg.blank?
    return svg_tag(svg, options)
  end
end
