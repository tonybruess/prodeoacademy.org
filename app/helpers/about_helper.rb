module AboutHelper
    def email_for(name)
        name.downcase.gsub(" ", "") + "@prodeoacademy.org"
    end
end
