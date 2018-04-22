module ApplicationHelper
  def filename_append source, append
    File.basename(source, File.extname(source)) + append + File.extname(source)
  end

  def image_2x source, options={}
    source_2x = filename_append(source, "@2x")
    path_2x = image_path source_2x
    image_tag source, options.merge({"data-rjs": path_2x})
  end

  def svg_tag source, options={}
    options[:class] = "icon-container #{options[:class]}"
    return content_tag(:div, "<svg class=\"icon icon-#{source}\"><use xlink:href=\"#icon-#{source}\"></use></svg>".html_safe, options)
  end
  
  def markdown md
    MarkdownRenderer.render(md).html_safe
  end
end
