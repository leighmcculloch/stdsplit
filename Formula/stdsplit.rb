class Stdsplit < Formula
  desc "Runs a command with stdout and stderr displayed side-by-side."
  homepage "https://github.com/leighmcculloch/stdsplit"
  bottle :unneeded

  depends_on "tmux"

  version "2.0.0"
  sha256 "1755026c42e5877d37b6ef0d6d2f3b812d038fd0c71560e2ad42a8fb69206b24"

  url "https://raw.githubusercontent.com/leighmcculloch/stdsplit/v#{version}/stdsplit"

  def install
    bin.install "stdsplit"
  end

  test do
    system "#{bin}/stdsplit -h"
  end
end
