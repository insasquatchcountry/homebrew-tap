class Fs < Formula
  desc "Scroll Figlet-generated ASCII art across the terminal, inspired by sl"
  homepage "https://github.com/insasquatchcountry/FigScroll"
  head "https://github.com/insasquatchcountry/FigScroll.git"

  license "MIT"

  depends_on "figlet"
  depends_on "ncurses"

  def install
    system "make"
    bin.install "fs"
    man1.install "fs.1"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/fs -h", 1)
  end
end
