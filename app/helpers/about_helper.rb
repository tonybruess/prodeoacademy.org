module AboutHelper
    def email(name)
        name.downcase.gsub(" ", "") + "@prodeoacademy.org"
    end
end
