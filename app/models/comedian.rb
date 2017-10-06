class Comedian < ActiveRecord::Base
    has_many :specials, class_name: "Special"
end
