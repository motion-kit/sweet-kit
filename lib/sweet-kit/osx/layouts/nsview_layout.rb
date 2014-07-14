# @requires MotionKit::NSViewLayout
module MotionKit
  class NSViewLayout

    def shadow(&block)
      target.layer ||= CALayer.layer
      shadow = SweetKit::Shadow.new(target.layer)
      context(shadow, &block)
    end

  end
end
