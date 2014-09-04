# @requires MK::UIViewHelpers
module MotionKit
  class UITableViewHelpers < UIViewHelpers
    targets UITableView

    def separator_style(value)
      value = value.uitablecellseparatorstyle if value.respond_to?(:uitablecellseparatorstyle)
      target.separatorStyle = value
    end
    alias separatorStyle separator_style

  end
end
