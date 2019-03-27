class VirgilCliAlpha < Formula
  desc "CLI tool to manage Virgil applications"
  homepage "https://github.com/VirgilSecurity/virgil-cli"
  devel do
    url "https://github.com/VirgilSecurity/virgil-cli/releases/download/v5.0.0-alpha4/virgil_5.0.0-alpha4_macOS_x86_64.tar.gz"
    sha256 "3cc10f34560c2d4208b51dd3460049824524e1e68d6492d07bfe8aada8043513"
  end

  def install
    bin.install "virgil"
  end

  test do
    result = %x(`virgil -v`)
    assert_equal "CLI version 5.0.0-alpha4, commit e97edf3e, built 2019-03-27T16:26:04Z\n", result
  end
end
