Rails.application.routes.draw do
  get 'coaching/ask', to: 'coaching#ask'
# implementing my first route to your CoachingController#answer action. The answer.html.erb will display the question you ask your coach as well as his answer.
  get 'coaching/answer', to: 'coaching#answer'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
