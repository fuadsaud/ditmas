(module config.plugins.todo-comments
  {autoload {todo-comments todo-comments}})

(defn config []
  (todo-comments.setup {}))
