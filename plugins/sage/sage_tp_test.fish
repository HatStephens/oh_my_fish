# prepare sage test database (Payroll)

function sage_tp_test --description 'Setup payroll test env'
  set -x RAILS_ENV test
  command bundle exec rake db:load_startpoint_and_migrate
  command bundle exec rake spec:db:fixtures:load
  command bundle exec rake payroll_stories:load
end
