cask "autopkgr" do
  version "1.5.5"
  sha256 "1f39b639fdce43d45f9869b5969116a685f650ac49c52f12a6e8682925ec31d7"

  url "https://github.com/lindegroup/autopkgr/releases/download/v#{version}/AutoPkgr-#{version}.dmg",
      verified: "github.com/lindegroup/autopkgr/"
  appcast "https://github.com/lindegroup/autopkgr/releases.atom"
  name "AutoPkgr"
  desc "Install and configure AutoPkg"
  homepage "https://www.lindegroup.com/autopkgr"

  app "AutoPkgr.app"
end
