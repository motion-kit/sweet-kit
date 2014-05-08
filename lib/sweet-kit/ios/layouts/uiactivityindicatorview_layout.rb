# @requires MotionKit::UIViewLayout
module MotionKit
  class UIActivityIndicatorViewLayout < UIViewLayout
    targets UIActivityIndicatorView

    def color(value)
      target.color = value.uicolor
    end

    def animating(is_animating)
      if is_animating
        target.startAnimating
      else
        target.stopAnimating
      end
    end

    def style(value)
      value = value.uiactivityindicatorstyle if value.respond_to?(:uiactivityindicatorstyle)
      target.activityIndicatorViewStyle = value
    end
    alias activityIndicatorViewStyle style

  end
end
