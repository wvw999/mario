
include Warden::Test::Helpers

def interactive_debug_session(log_in_as = nil)
  return unless Capybara.current_driver == Capybara.javascript_driver
  return unless current_url
  login_as(log_in_as, scope: :user) if log_in_as.present?
  Launchy.open(current_url)
  binding.pry
end
