Rails.application.routes.draw do

  root 'recommender#choose_list'
  get  'recommender/choose_book'
  get  'recommender/recommendation'

end
