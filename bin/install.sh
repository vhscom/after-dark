#!/usr/bin/env bash
set -e

SITE_SOURCE_PATH=$(pwd)
HUGO_CONFIG_PATH="./config.toml"

# Create new site
if [[ $1 != "" ]]; then
  SITE_SOURCE_PATH="${SITE_SOURCE_PATH}/$1"
  hugo new site $1 && cd $_
else
  SITE_SOURCE_PATH="${SITE_SOURCE_PATH}/flying-toasters"
  hugo new site flying-toasters && cd $_
fi

echo "\nInstalling After Dark ..."

# Clone repo
(cd themes; git clone -q --depth 1 https://codeberg.org/vhs/after-dark || { echo "cloning failed :/"; exit 1; })

# Copy archetypes
cp themes/after-dark/archetypes/* ./archetypes

# Tee up config file
tee $HUGO_CONFIG_PATH > /dev/null <<EOF
baseurl = "https://c74ce35e.ngrok.io" # Controls base URL
languageCode = "en-US" # Controls site language
title = "After Dark" # Homepage title and page title suffix
paginate = 11 # Number of posts to show before paginating

theme = "after-dark" # Set default theme

enableRobotsTXT = true # Suggested, enable robots.txt file
googleAnalytics = "" # Optional, add tracking Id for analytics
disqusShortname = "" # Optional, add Disqus shortname for comments
SectionPagesMenu = "main" # Enable menu system for lazy bloggers
footnoteReturnLinkContents = "↩" # Provides a nicer footnote return link

[params]
  description = "" # Suggested, controls default description meta
  author = "" # Optional, controls author name display on posts
  hide_author = false # Optional, set true to hide author name on posts
  show_menu = false # Optional, set true to enable section menu
  powered_by = true # Optional, set false to disable credits
  images = [
    "https://source.unsplash.com/category/technology/1600x900"
  ] # Suggested, controls default Open Graph images
  theme_variant = "" # Optional, for use to overriding default theme
EOF

echo "Creating an example post to get you started ..."
hugo new post/starry-night.md

echo "Serving your After Dark site ..."

# Serve site backgrounded over Docker-friendly loopback
hugo serve --buildDrafts --port 1337 --bind "0.0.0.0" &

# Wait a second for Hugo server to fire up
sleep 1

# Pop the site in terminal browser, if installed
if [[ "elinks" != "" ]]; then
  elinks http://0.0.0.0:1337/
fi

echo "Installation complete! Your new After Dark site is created in $SITE_SOURCE_PATH."
echo "\nSite is currently running at http://0.0.0.0:1337/"
echo "To stop it run \"kill \$(lsof -nt -i4TCP:1337)\"."
echo "\nThank you for choosing After Dark."

exit 0
