# @requires MotionKit::CALayerLayout
module MotionKit
  class CALayerLayout

    def background_color(value, alpha=nil)
      if key == :color && CFGetTypeID(value) != CGColorGetTypeID()
        value = value.uicolor.CGColor
      end
      target.backgroundColor = value
    end
    alias backgroundColor background_color

    def border_color(value)
      if key == :color && CFGetTypeID(value) != CGColorGetTypeID()
        value = value.uicolor.CGColor
      end
      target.borderColor = value
    end
    alias borderColor border_color

  end
end
