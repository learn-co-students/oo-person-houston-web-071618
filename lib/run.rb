require_relative "person"
require "pry"

alex = Person.new("Alex")

alex.get_paid(1000000)

jeannie = Person.new("Jeannie")

alex.call_friend(jeannie)

alex.start_conversation(jeannie, "politics")
