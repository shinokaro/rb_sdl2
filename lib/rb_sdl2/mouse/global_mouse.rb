module RbSDL2
  module Mouse
    require_relative 'mouse_class'

    class GlobalMouse < MouseClass
      def position=(x_y)
        err = ::SDL2.SDL_WarpMouseGlobal(*x_y)
        raise RbSDL2Error if err < 0
        update
      end

      def update
        self.button = ::SDL2.SDL_GetGlobalMouseState(x_ptr, y_ptr)
        self
      end
    end
  end
end