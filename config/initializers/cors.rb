Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://andy-todo-list-front-end.herokuapp.com'

    resource '*',
      headers: :any,
      methods: [:post]
  end
end
