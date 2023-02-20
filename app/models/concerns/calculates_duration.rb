module CalculatesDuration
  extend ActiveSupport::Concern

  included do
    after_save_commit :update_parent_duration

    cattr_accessor :parent_to_update, :duration_association, :duration_column
  end

  class_methods do
    def calculates_duration_from(association_name, column: :duration)
      self.duration_association = association_name
      self.duration_column = column
    end

    def updates_duration_of(parent_association)
      self.parent_to_update = parent_association
    end
  end

  def update_duration!
    update(duration: calculate_duration)
  end

  def calculate_duration
    send(self.class.duration_association).sum(self.class.duration_column)
  end

  def update_parent_duration
    send(parent_association_name).update_duration! if has_parent_record?
  end

  def parent_association_name
    self.class.parent_to_update
  end

  def has_parent_record?
    !!send(parent_association_name) if parent_association_name
  end
end
