class Kitten < ApplicationRecord
    def as_json(options={})
        { :name => self.name, :age => self.age, :cuteness => self.cuteness, :softness => self.softness }  # NOT including the email field
    end
end
