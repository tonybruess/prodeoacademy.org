module NavHelper
    def submenu(pages, section)
        output = '<ul class="dropdown-menu">'
        pages.each do |page|
            href = "/"
            if section != nil
                href << urlify(section) + "/"
            end
            href << urlify(page)
            output << %Q{<li><a href="#{href}">#{page}</a></li>}
        end
        output << "</ul>"
    end

    def urlify(str)
        str.gsub("Our ", "").gsub("A ", "").downcase.gsub(/\s+/, "_").gsub(/\W+/, "")
    end
end