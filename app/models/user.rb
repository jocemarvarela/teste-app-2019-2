class User < ApplicationRecord
    validates :login, presence: true

    before_validation :determine_login

    def generate_login
        return self.name.downcase
    end

    def determine_login
        self.login = self.generate_login
    end
end
