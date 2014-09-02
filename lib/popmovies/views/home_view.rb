module Popmovies
  module Views
    class HomeView
      
      BANNER = %Q[
88""Yb  dP"Yb  88""Yb 8b    d8  dP"Yb  Yb    dP 88 888888 .dP"Y8
88__dP dP   Yb 88__dP 88b  d88 dP   Yb  Yb  dP  88 88__   `Ybo."
88"""  Yb   dP 88"""  88YbdP88 Yb   dP   YbdP   88 88""   o.`Y8b
88      YbodP  88     88 YY 88  YbodP     YP    88 888888 8bodP'
                                                                

                                            by gntics]

      def initialize router
        @router = router
      end

      def render
        display_welcome
        Curses.refresh
        # return true
        @router.get :tv_shows
      end

      def display_welcome
        banner_parts = BANNER.split "\n"
        widths = []
        banner_parts.each do |line|
          widths << line.length
        end

        width = widths.max
        height = banner_parts.length
        window = Curses::Window.new(height, width,
                 (Curses.lines - height + 3) / 2, (Curses.cols - width) / 2)
        window.keypad true
        banner_parts.each do |line|
          window.addstr line
        end
        window.refresh
        window.getch
        window.close
      end

    end
  end
end