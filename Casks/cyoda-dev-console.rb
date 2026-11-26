cask "cyoda-dev-console" do
  version "0.5.0"
  sha256 arm:   "e4b288e59084f1cda1d04c1e218356d49dea3d6bdf46c258f2d67bbd5038007b",
         intel: "4923aa1240bc13dd97db55bb60792c54d92c5453974fb847c0757637ae8bdfa8"

  arch arm: "aarch64", intel: "x86_64"
  url "https://github.com/cyoda/cyoda-dev-console/releases/download/v#{version}/cyoda-dev-console_#{version}_#{arch}.dmg"

  name "Cyoda Dev Console"
  desc "Local file-based editor for Cyoda workflows"
  homepage "https://cyoda.com"

  auto_updates false
  depends_on macos: :monterey

  app "Cyoda Dev Console.app"

  zap trash: [
    "~/Library/Application Support/Cyoda Dev Console",
    "~/Library/Preferences/com.cyoda.devconsole.plist",
    "~/Library/Saved Application State/com.cyoda.devconsole.savedState",
  ]
end
