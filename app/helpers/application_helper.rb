module ApplicationHelper
  def image_2x source, options={}
    source_2x = File.basename(source, File.extname(source)) + "@2x" + File.extname(source)
    path_2x = image_path source_2x
    image_tag source, options.merge({"data-rjs": path_2x})
  end

  def markdown md
    MarkdownRenderer.render(md).html_safe
  end
end
