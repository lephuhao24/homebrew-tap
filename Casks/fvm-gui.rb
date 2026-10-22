cask "fvm-gui" do
  version "1.0"
  sha256 "ecee687add331f34fb8d29327fec66dc3d56253ea3f5ba9cddb04f13d7d52f8c"

  url "https://github.com/lephuhao24/flutters/releases/download/v#{version}/FVM-GUI.zip"
  name "FVM GUI"
  desc "Native macOS interface for managing Flutter SDKs with FVM"
  homepage "https://github.com/lephuhao24/flutters"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "FVM GUI.app"

  caveats <<~EOS
    This tester build is not signed or notarized. macOS may block its first launch.
    Only install releases from a source you trust. If blocked, review the app in
    System Settings > Privacy & Security and use Open Anyway only after verifying
    the release checksum.
  EOS
end
