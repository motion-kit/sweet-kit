# @requires MK::UIViewHelpers
module MotionKit
  class UITableViewCellHelpers < UIViewHelpers
    targets UITableViewCell

    def selection_style(value)
      value = value.uitablecellselectionstyle if value.respond_to?(:uitablecellselectionstyle)
      target.selectionStyle = value
    end
    alias selectionStyle selection_style

    def accessory_type(value)
      value = value.uitablecellaccessory if value.respond_to?(:uitablecellaccessory)
      target.accessoryType = value
    end
    alias accessoryType accessory_type

  end
end
