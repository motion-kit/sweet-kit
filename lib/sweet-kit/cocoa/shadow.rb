# @requires MotionKit::BaseLayout
module SweetKit

  class Shadow
    attr :layer

    def initialize(layer)
      @layer = layer
    end

  end

  class ShadowLayout < MotionKit::BaseLayout
    targets Shadow

    def opacity(value)
      target.layer.shadowOpacity = value
    end

    def radius(value)
      target.layer.shadowRadius = value
    end

    def offset(value)
      target.layer.shadowOffset = value
    end

    def color(value)
      if CFGetTypeID(value) != CGColorGetTypeID()
        value = value.uicolor.CGColor
      end
      target.layer.shadowColor = value
    end

    def path(value)
      if CFGetTypeID(value) != CGPathGetTypeID()
        value = value.CGPath
      end
      target.layer.shadowPath = value
    end

  end

end
