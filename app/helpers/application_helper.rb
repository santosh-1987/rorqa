module ApplicationHelper
  def verify_commentable(type)
    case type
      when "Question"
        return Question
      when "Answer"
        return Answer
      else
        return false
    end
  end
end
