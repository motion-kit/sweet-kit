# @requires MotionKit::CALayerHelpers
module MotionKit
  class CALayerHelpers

    def background_color(value)
      if CFGetTypeID(value) != CGColorGetTypeID()
        value = value.nscolor.CGColor
      end
      target.backgroundColor = value
    end
    alias backgroundColor background_color

    def border_color(value)
      if CFGetTypeID(value) != CGColorGetTypeID()
        value = value.nscolor.CGColor
      end
      target.borderColor = value
    end
    alias borderColor border_color

  end
end
