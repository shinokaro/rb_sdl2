module RbSDL2
  module Error
    class << self
      # SDL が設定したエラーメッセージをクリアします。
      def clear = ::SDL.ClearError

      # SDL からのエラーメッセージを文字列で返します。
      # SDL からエラーが通知されてもえらメッセージがあるとは限りません。
      # SDL の関数はエラーの状態を示してもエラーメッセージをセットしない場合があります。
      def message = ::SDL.GetError.read_string
    end
  end
end
