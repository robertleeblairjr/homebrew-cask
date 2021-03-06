cask "sloth" do
  version "3.0.1"
  sha256 "67ff13b1532381853eefaf1043fb58d2d4885320112e6fa6edd17f4d06caebdc"

  url "https://sveinbjorn.org/files/software/sloth/sloth-#{version}.zip"
  appcast "https://sveinbjorn.org/files/appcasts/SlothAppcast.xml"
  name "Sloth"
  desc "Displays all open files and sockets in use by all running processes"
  homepage "https://sveinbjorn.org/sloth"

  auto_updates true

  app "Sloth.app"

  zap trash: [
    "~/Library/Caches/org.sveinbjorn.Sloth",
    "~/Library/Preferences/org.sveinbjorn.Sloth.plist",
    "~/Library/Saved Application State/org.sveinbjorn.Sloth.savedState",
  ]
end
