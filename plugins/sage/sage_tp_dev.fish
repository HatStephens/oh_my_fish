# prepare sage dev database (Payroll)

function sage_tp_dev --description 'Setup payroll dev env'
  set -x RAILS_ENV development
  command bundle exec rake db:load_startpoint_and_migrate
  command bundle exec rake spec:db:fixtures:load
end