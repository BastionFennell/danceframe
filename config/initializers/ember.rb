EmberCli.configure do |c|
  c.app :frontend, path: Rails.root.join('ember-app').to_s
end
