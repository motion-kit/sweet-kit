# @requires MotionKit::BaseLayout
# @provides SweetKit::Shadow
module SweetKit

  class Shadow
    attr :layer

    def initialize(layer)
      @layer = layer
    end

  end

end
