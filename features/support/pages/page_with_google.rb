module PageWithGoogle
  include Gizmo::PageMixin

  def valid?
    if title =~ /.*Google.*/
      return true
    else
      return false
    end
  end

  def title
    @document.xpath("//title").inner_text
  end

  def fill_in_search query
    fill_in 'q', :with=> query
  end

  def click_submit_button
    click "Google Search"
  end

  def qastuffs_main_css
    ".description"
  end

  def click_first_result
    locate(:xpath, ".//*[@id='rso']/li[1]/h3/a").click
  end

end

