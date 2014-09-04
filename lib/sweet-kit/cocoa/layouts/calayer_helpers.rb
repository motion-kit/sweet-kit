# @requires MotionKit::CALayerHelpers
module MotionKit
  class CALayerHelpers

    def shadow(&block)
      sk_shadow = SweetKit::Shadow.new(target)
      context(sk_shadow, &block)
    end

  end
end
