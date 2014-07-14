# @requires MotionKit::CALayerLayout
module MotionKit
  class CALayerLayout

    def background_color(value)
      if key == :color && CFGetTypeID(value) != CGColorGetTypeID()
        value = value.nscolor.CGColor
      end
      target.backgroundColor = value
    end
    alias backgroundColor background_color

    def border_color(value)
      if key == :color && CFGetTypeID(value) != CGColorGetTypeID()
        value = value.nscolor.CGColor
      end
      target.borderColor = value
    end
    alias borderColor border_color

    def shadow(&block)
      shadow = SweetKit::Shadow.new(target)
      context(shadow, &block)
    end

  end
end
