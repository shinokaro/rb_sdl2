module RbSDL2
  module Cursor
    class CursorPointer < ::FFI::AutoPointer
      class << self
        # カーソルポインターはいつでも開放してよい。
        # SDL はカレントカーソルが開放されたときはデフォルトカーソルをカレントカーソルに設定する。
        # デフォルトカーソルは FreeCursorを呼び出しても開放されない。
        def release(ptr) = ::SDL.FreeCursor(ptr)
      end
    end
  end
end
