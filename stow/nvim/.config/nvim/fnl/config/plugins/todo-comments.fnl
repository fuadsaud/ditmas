(module config.plugins.todo-comments
  {autoload {todo-comments todo-comments}})

(defn config []
  (print "passou squi")
  (todo-comments.setup {}))
