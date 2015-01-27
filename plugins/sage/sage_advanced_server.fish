# start server

function sage_advanced_server --description 'Start server'
  set -x RAILS_ENV development
  command bundle exec rails s -p 3032
end