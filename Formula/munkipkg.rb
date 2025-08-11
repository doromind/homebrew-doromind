class Munkipkg < Formula
  desc "Build Apple installer pkgs from simple project directories"
  homepage "https://github.com/munki/munki-pkg"
  head "https://github.com/munki/munki-pkg.git", branch: "main"

  depends_on "python@3.12"

  def install
    bin.install "munkipkg"
  end

  test do
    assert_match "usage", shell_output("#{bin}/munkipkg --help")
  end
end
