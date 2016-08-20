require "./sprint-name-generator/*"
require "kemal"
require "haikunator"

get "/" do
  sprint_name = Haikunator.haikunate(0, "-", {adjectives: ADJECTIVES, nouns: NOUNS})
  render "src/views/generate.ecr", "src/views/layouts/application.ecr"
end

Kemal.run
