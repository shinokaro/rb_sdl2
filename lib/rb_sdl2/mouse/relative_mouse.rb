module RbSDL2
  module Mouse
    require_relative 'mouse_class'

    class RelativeMouse < MouseClass
      def update
        self.button = ::SDL2.SDL_GetRelativeMouseState(x_ptr, y_ptr)
        self
      end
    end
  end
end