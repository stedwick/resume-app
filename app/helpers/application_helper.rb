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
    class_prefix = options[:class_prefix] || "svg"
    options[:class] = "#{class_prefix}-container #{options[:class]}"
    return content_tag(:div, "<svg class=\"#{class_prefix} #{class_prefix}-#{source}\"><use xlink:href=\"##{class_prefix}-#{source}\"></use></svg>".html_safe, options)
  end
  
  def svg_icon source, options={}
    options[:class_prefix] = "icon"
    return svg_tag(source, options)
  end
  
  def markdown md
    MarkdownRenderer.render(md).html_safe
  end
end
