(module config.plugins.todo-comments
  {autoload {todo-comments todo-comments}})

(defn setup []
  (todo-comments.setup {}))
