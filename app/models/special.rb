class Special < ActiveRecord::Base
    belongs_to :comedian, class_name: "Comedian"
end

