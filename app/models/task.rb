class Task < ActiveRecord::Base 
    belongs_to :category 

    def date_format
        due_by.strftime("%a, %b %-d %Y")
    end

  
end