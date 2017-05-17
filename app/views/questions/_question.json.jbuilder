json.extract! question, :id, :question, :subject_id, :created_at, :updated_at
json.url question_url(question, format: :json)
