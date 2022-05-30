class TaskController < HtmlController
  def index
    @tasks = Task.left_joins(:user).all
  end
end
