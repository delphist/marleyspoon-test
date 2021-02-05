# frozen_string_literal: true

module Public
  module Entities
    class Tag < Grape::Entity
      expose :name
    end
  end
end
