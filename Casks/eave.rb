cask "eave" do
  version "0.3.0"
  sha256 "b5b5fd2d89fa2662e4c3673e87bb18fe2711bf9e1149b5a3f371c3f9435e9ef5"

  url "https://github.com/joeqiao64/eave/releases/download/v#{version}/Eave.zip"
  name "Eave"
  desc "Notch music player, file shelf and screenshot tool"
  homepage "https://github.com/joeqiao64/eave"

  auto_updates true
  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Eave.app"

  zap trash: [
    "~/Library/Application Support/Perch",
    "~/Library/Preferences/com.local.perch.plist",
  ]

  caveats <<~EOS
    Eave is not notarized by Apple. On first launch macOS will say it
    can't verify the developer: open System Settings → Privacy & Security
    and click "Open Anyway". You only need to do this once.
  EOS
end
