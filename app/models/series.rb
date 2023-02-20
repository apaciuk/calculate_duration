class Series < ApplicationRecord
has_many :chapters, dependent: :destroy, class_name: "Chapter"

serialize :duration, DurationCoder
end
