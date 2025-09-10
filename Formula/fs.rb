class Fs < Formula
  desc "Scroll Figlet-generated ASCII art across the terminal, inspired by sl"
  homepage "https://github.com/InSasquatchCountry/FigScroll"
  # Comment out url until v1.0.0 is released
  # url "https://github.com/insasquatchcountry/FigScroll/archive/v1.0.0.tar.gz"
  head "https://github.com/InSasquatchCountry/FigScroll.git", branch: "main"

  license "MIT"

  depends_on "figlet"
  depends_on "ncurses"

  def install
    system "make" || raise("Make failed")
    bin.install "fs"
    man1.install "fs.1"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/fs -h", 1)
  end
end
