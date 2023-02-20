class Series < ApplicationRecord
include CalculatesDuration
has_many :chapters, dependent: :destroy, class_name: "Chapter"

serialize :duration, DurationCoder

calculates_duration_of :chapters
end
