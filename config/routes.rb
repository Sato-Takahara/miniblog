Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 #以下のアクションで引き起こされたviewは全てappliation.html.erbのyeildへ渡される
 root  'blog_posts#index'
  get 'blog_posts' => 'blog_posts#index'
 get 'blog_posts/new' => 'blog_posts#new'
 get '/blog_posts/blog_posts/new' => 'blog_posts#new'
 post 'blog_posts' => 'blog_posts#create'
 patch '/blog_posts/:id' => 'blog_posts#update'
 get   'blog_posts/:id/edit'  => 'blog_posts#edit'
 delete 'blog_posts/:id'=> 'blog_posts#destroy'
 get 'blog_posts/:id' => 'blog_posts#show'
 
end
