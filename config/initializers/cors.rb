Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:post]
  end
end

Rails.application.config.hosts << "http://localhost:8000/"
Rails.application.config.hosts << "https://andy-todo-list-front-end.herokuapp.com/"
