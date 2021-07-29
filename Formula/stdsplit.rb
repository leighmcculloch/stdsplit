class Stdsplit < Formula
  desc "Runs a command with stdout and stderr displayed side-by-side."
  homepage "https://github.com/leighmcculloch/stdsplit"
  bottle :unneeded

  depends_on "tmux"

  version "1.0.0"
  sha256 "575aa3ce5c8ff0d110d238613fa1b0727f0640fbb27a0beeb60f873ccc7cd0cb"

  url "https://raw.githubusercontent.com/leighmcculloch/stdsplit/v#{version}/stdsplit"

  def install
    bin.install "stdsplit"
  end

  test do
    system "#{bin}/stdsplit -h"
  end
end
