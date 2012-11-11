module NavHelper
    def submenu(pages, section)
        output = '<ul class="dropdown-menu">'
        pages.each_with_index do |page, i|
            href = "/"
            if section != nil
                href << urlify(section) + "/"
            end
            href << urlify(page) << ".html"
            output << %Q{<li><a href="#{href}">#{page}</a></li>}
            output << "<li class='divider'></li>" if pages[i + 1] != nil
        end
        output << "</ul>"
    end

    def urlify(str)
        str.gsub("Our ", "").gsub("A ", "").downcase.gsub(/\s+/, "_").gsub(/\W+/, "")
    end
end