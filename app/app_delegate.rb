class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    ctlr = SweetKitController.new
    first = UINavigationController.alloc.initWithRootViewController(ctlr)
    @window.rootViewController = first
    @window.makeKeyAndVisible
    true
  end
end


class SweetKitController < UIViewController

  def layout
    @layout ||= SweetKitLayout.new
  end

  def loadView
    self.view = layout.view
    self.title = 'SweetKit'
  end

end


class SweetKitLayout < MK::Layout

  def layout
    background_color :slategray
    content_mode :fill
    tint_color :blue

    add UIActivityIndicatorView do
      color :blue
      animating true
      style :large
      center [20, 90]
    end

    add UIButton do
      shadow do
        opacity 0.5
        radius 5
        offset [1, 2]
        color :gray
      end

      title 'FOO'
      title_color '#fff'
      title_shadow_color '#111'
      font 'Avenir-Roman'
      size_to_fit

      center ['50%', 80]
      normal do
        title 'foo'
      end
      highlighted do
        title 'FOO'
        title_color '#111'
        title_shadow_color '#fff'
      end
    end

    add UILabel do
      text 'Sweeeeet'
      shadow_color '#222222'
      text_color '#999999'
      highlighted_text_color '#ffffff'
      font 'Avenir-Medium'
      line_break_mode :word_wrap
      text_alignment :center
      baseline_adjustment :none

      size_to_fit
      center ['50%', 110]
    end

    add UIDatePicker do
      frame from_bottom(height: :auto)
      date_picker_mode :date_and_time
    end

    add UITableView do
      delegate self
      data_source self
      separator_style :etched
      registerClass(Cell, forCellReuseIdentifier: Cell::ID)

      frame [[0, 150], ['100%', 100]]
    end
  end

  def tableView(table_view, numberOfRowsInSection: section)
    99
  end

  def tableView(table_view, cellForRowAtIndexPath: index_path)
    context table_view.dequeueReusableCellWithIdentifier(Cell::ID) do
      if index_path.row % 2 == 0
        selection_style :blue
      else
        selection_style :gray
      end
      accessory_type :detail
    end
  end

  def tableView(table_view, didSelectRowAtIndexPath: index_path)
    table_view.deselectRowAtIndexPath(index_path, animated: true)
  end

end


class Cell < UITableViewCell
  ID = 'Cell'
end
