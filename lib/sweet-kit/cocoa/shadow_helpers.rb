# @requires MotionKit::BaseLayout
# @requires SweetKit::Shadow
module SweetKit

  class ShadowHelpers < MotionKit::BaseLayout
    targets Shadow

    def opacity(value)
      target.layer.shadowOpacity = value
    end

    def radius(value)
      target.layer.shadowRadius = value
    end

    def offset(value)
      if value.is_a?(Numeric)
        target.layer.shadowOffset = [value, value]
      else
        target.layer.shadowOffset = value
      end
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
