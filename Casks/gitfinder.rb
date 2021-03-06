cask "gitfinder" do
  version "1.6.1"
  sha256 "2d5b43cce977c857ea601acb263696a3404a65f6b1f30ff72a87f4f2c1f2f631"

  url "https://get.gitfinder.com/GitFinder#{version.dots_to_underscores}.dmg"
  appcast "https://zigz.ag/GitFinder/updates/stablecast.xml"
  name "GitFinder"
  homepage "https://gitfinder.com/"

  app "GitFinder.app"

  uninstall launchctl: "ag.zigz.GitFinder.GitFinderLauncher",
            quit:      [
              "ag.zigz.GitFinder",
              "ag.zigz.GitFinder.GitFinderSync",
            ]

  zap trash: [
    "~/Library/Application Scripts/ag.zigz.GitFinder*",
    "~/Library/Containers/ag.zigz.GitFinder*",
    "~/Library/Group Containers/*.ag.zigz.GitFinder",
  ]
end
