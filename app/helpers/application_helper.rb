module ApplicationHelper
    def controller?(*controller)
      controller.include?(params[:controller])
    end
    
    def action?(*action)
      action.include?(params[:action])
    end

    def current_class?(test_path)
      return 'active' if request.path == test_path
      ''
    end
end
