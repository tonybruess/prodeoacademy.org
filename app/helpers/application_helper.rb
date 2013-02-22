module ApplicationHelper
    def submenu(pages, section)
        output = '<ul class="dropdown-menu">'
        pages.each_with_index do |page, i|
            href = "/"
            if section != nil
                href << urlify(section) + "/"
            end
            href << urlify(page)
            output << %Q{<li><a href="#{href}">#{page}</a></li>}
            output << "<li class='divider'></li>" if pages[i + 1] != nil
        end
        output << "</ul>"
        output.html_safe
    end

    def urlify(str)
        str.gsub("Our ", "").gsub("A ", "").downcase.gsub(/\s+/, "_").gsub(/\W+/, "")
    end

    def placehold(x, y)
        "//placehold.it/" + x.to_s + "x" + y.to_s + "&text=Coming%20soon!&break.png"
    end
end
