class Todo::Destroyer < Todo::ServiceObject
  def destroy_todo(result_as_json: false)
    todo = find_todo

    todo.destroy

    result_as_json ? serialize_todo(todo) : todo
  end
end
