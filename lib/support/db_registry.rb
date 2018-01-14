require 'ostruct'
require_relative "./connection_adapter"

DBRegistry ||= OpenStruct.new(test: ConnectionAdapter.new("db/superteams-test.db"),
  development: ConnectionAdapter.new("db/superteams-development.db"),
  production: ConnectionAdapter.new("db/superteams-production.db")
  )
