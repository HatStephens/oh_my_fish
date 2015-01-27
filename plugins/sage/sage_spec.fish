# run specs

function sage_spec --description 'Run specs choosen'
  set -x RAILS_ENV test
  command bundle exec rspec $argv
end