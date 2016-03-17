module MegaLotto
  class Drawing

    def draw
      Array.new(5) { rand(0...60) }
    end

  end
end