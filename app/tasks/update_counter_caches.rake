namespace "app:update_counter_cache" do
   desc "Update all counter caches"
   task :all => [:environment, :questions, :users, :categories]

   desc "Update questions counter cache"
   task :questions do
      Question.find_each do |question|
         Question.reset_counters(question.id, :replies)
      end      
   end

   desc "Update questions counter cache"
   task :users do
      User.find_each do |user|
         User.reset_counters(user.id, :questions)
         User.reset_counters(user.id, :replies)
      end
   end      

   desc "Update categories counter cache"
   task :categories do
      Category.find_each do |category|         
         Category.reset_counters(category.id, :questions)
      end
   end   
end