class QuestionFilter
   UNANSWERED = "unanswered"

   def self.filter(filter)
      scope = Question.recent
      scope = scope.unanswered if filter == UNANSWERED      
      scope
   end
end