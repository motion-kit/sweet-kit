# @requires MotionKit::NSViewHelpers
module MotionKit
  class NSViewHelpers

    def shadow(&block)
      target.layer ||= CALayer.layer
      shadow = SweetKit::Shadow.new(target.layer)
      context(shadow, &block)
    end

  end
end
