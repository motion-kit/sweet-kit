# @requires MotionKit::CALayerLayout
module MotionKit
  class CALayerLayout

    def shadow(&block)
      shadow = SweetKit::Shadow.new(target)
      context(shadow, &block)
    end

  end
end
