class Sam < Formula
  desc "Steam Achievement Manager for macOS"
  homepage "https://github.com/luisitoluis/sam-macos-rs"
  license "GPL-3.0-only"

  depends_on :macos

  on_macos do
    on_arm do
      url "https://github.com/luisitoluis/sam-macos-rs/releases/download/v1.0.2/sam_1.0.2_darwin_arm64.tar.gz"
      sha256 "4abb448d24f5f71f22432dc14af7224789d1856240e6af50b0f705259ddbdbb9"
    end
    on_intel do
      url "https://github.com/luisitoluis/sam-macos-rs/releases/download/v1.0.2/sam_1.0.2_darwin_amd64.tar.gz"
      sha256 "f4c4b9cb69b4e6e0f9736239639fee400effc34c1ea199f1d4969c5456a10337"
    end
  end

  def install
    prefix.install "Sam.app"
    (bin/"sam").write <<~SH
      #!/bin/sh
      exec open -a "#{opt_prefix}/Sam.app" --args "$@"
    SH
    (bin/"sam").chmod 0755
  end

  def caveats
    <<~EOS
      Run `sam` to open the window.
      The terminal UI is a separate formula: `brew install luisitoluis/tap/sam-tui`.
      Steam needs to have been launched once before the first run.
    EOS
  end

  test do
    assert_path_exists prefix/"Sam.app/Contents/Info.plist"
  end
end
