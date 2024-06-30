class User < ActiveRecord::Base
    def self.to_csv
      attributes = %w{id email name}
  
      CSV.generate(headers: true) do |csv|
        csv << attributes
  
        all.find_each do |user|
          csv << attributes.map{ |attr| user.send(attr) }
        end
      end
    end
  
    def name
      "#{first_name} #{last_name}"
    end

    class User
      include GenerateCSV
    end
  end