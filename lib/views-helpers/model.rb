require 'active_model'

module ViewsHelpers
  module Model
    
    def self.included(base)
      base.class_eval do
        extend(ActiveModel::Naming)
        include(ActiveModel::Validations)
      end
    end

    def persisted?
      false
    end

    def new_record?
      true
    end

    def to_model
      self
    end

    def to_key
      [object_id]
    end

    def to_param
      nil
    end

  end
end
