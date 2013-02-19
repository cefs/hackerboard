class Question < ActiveRecord::Base
   attr_readonly :user_id # Não pode transferir question para outro usuário quando já vinculado
   attr_accessible :title, :body, :category_id

   belongs_to :user
   belongs_to :category

   validates_presence_of :title, :body, :category, :user

end