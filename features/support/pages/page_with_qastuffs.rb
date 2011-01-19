module PageWithQastuffs
  include Gizmo::PageMixin

  def valid?
    title.should =~ /.*QA Blog.*/
  end

  def title
    @document.xpath("//title").inner_text
  end

end
