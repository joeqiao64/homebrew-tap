cask "eave" do
  version "0.2.0"
  sha256 "944cc3d4aff323fce80ebd12ecc3c23aa8c4429df6e218d04b4d4f13391857a8"

  url "https://github.com/joeqiao64/eave/releases/download/v#{version}/Eave.zip"
  name "Eave"
  desc "Notch music player, file shelf and screenshot tool"
  homepage "https://github.com/joeqiao64/eave"

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
