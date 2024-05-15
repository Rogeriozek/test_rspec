# frozen_string_literal: true

require 'rails_helper'

RSpec.configure do |config|
  config.openapi_root = Rails.root.join('swagger').to_s
  config.openapi_specs = {
    'v1/swagger.yaml' => {
      openapi: '3.0.1',
      info: {
        title: 'API Aula 05 V1',
        version: 'v1'
      },
      paths: YAML.load_file(Rails.root.join('swagger/v1/swagger.yaml'))
    }
  }
  config.openapi_format = :yaml
end
