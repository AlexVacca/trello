json.array!(@tasks) do |task|
  json.extract! task, :id, :title, :content, :duration, :startd, :endd, :user_id, :finished
  json.url task_url(task, format: :json)
end
