module PageWithQastuffs
  include Gizmo::PageMixin

  def valid?
    title.should =~ /.*site:qastuffs.blogspot.com - Google Search.*/
  end

  def title
    @document.xpath("//title").inner_text
  end

end
