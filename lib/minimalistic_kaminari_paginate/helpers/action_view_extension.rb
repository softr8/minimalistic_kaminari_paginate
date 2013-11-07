module MinimalisticKaminariPaginate
  module ActionViewExtension

    # A helper that renders the pagination links. But much faster
    #
    #   <%= minimalistic_paginate @articles %>
    #
    # ==== Options
    # * <tt>:window</tt> - The "inner window" size (4 by default).
    # * <tt>:sides</tt> - The "left/right outer window" size (3 by default).
    # * <tt>:params</tt> - url_for parameters for the links (:controller, :action, etc.)
    def minimalistic_paginate collection, options = {}
      window = options[:window] || 4
      side_size = options[:sides] || 3
      output = ''
      if collection.num_pages > 1
        output << "<nav class='pagination'>"
        page_base = collection.current_page
        if page_base > window
          output << content_tag(:span, class: 'first') do
            link_to raw(t 'views.pagination.first'), url_for(params.merge(page: 1))
          end
          output << content_tag(:span, class: 'page gap') { '... ' }
        end

        (page_base <= side_size ? 1 : page_base - 3).upto(page_base > collection.num_pages - side_size ? collection.num_pages : page_base + side_size) do |page|
          output << content_tag(:span, class: "page") do
            link_to_unless (collection.current_page == page), page.to_s, url_for(params.merge(page: page))
          end
        end
        if page_base < collection.num_pages - side_size
          output << content_tag(:span, class: 'page gap') { '... ' }
          output << content_tag(:span, class: 'last') do
            link_to raw(t 'views.pagination.last'), url_for(params.merge(page: collection.num_pages))
          end
        end
        output << "</nav>"
      end
      output.html_safe
    end
  end
end