# @requires MK::UIViewHelpers
module MotionKit
  class UINavigationBarHelpers < UIViewHelpers
    targets UINavigationBar

    def backgroundImage(image, forBarMetrics: value)
      value = value.uibarmetrics if value.respond_to?(:uibarmetrics)
      target.setBackgroundImage(image && image.uiimage, forBarMetrics:metric)
    end

  end
end
