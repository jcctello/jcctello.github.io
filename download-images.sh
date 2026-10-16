#!/usr/bin/env bash
# Downloads the images from the current Wix site into the images/ folder.
# Run it once from the repository folder (Git Bash on Windows, or Terminal on Mac/Linux):
#   bash download-images.sh
set -e
mkdir -p images
B="https://static.wixstatic.com/media"
get() { echo "Downloading $2"; curl -fsSL "$B/$1" -o "images/$2"; }

get "79c193_c57b1dcb19f945868931819663b0cd72~mv2.png" logo.png
get "79c193_8dffe758586e403790b546ea5e46ee21~mv2.jpg" profile.jpg
get "79c193_e55cd34973674a31b4d31d7cc67ce6a8~mv2.png" footer-logo.png
get "112e5d79540c445a8c02114ceda740f1.jpg"           dna.jpg
get "44eb1e29ffa34198aee01e8d4f305903.png"           flag-en.png
get "a1b09fe8b7f04378a9fe076748ad4a6a.png"           flag-es.png
get "e99b4e_2c9a153bef0445d3bfb520bac8ad96ed.png"    publications-bg.png
get "79c193_7aef06f535af4cef9352918a424ac5af~mv2.png" google-scholar.png
get "79c193_144ee6ec1df946109c605ee04b4a483b~mv2.png" researchgate.png
get "79c193_747a73bad2414d13881587fa51788af7~mv2.png" uaslp-ciep.png
get "79c193_fd18d8a9cbe240368789a52a4814bff3~mv2.png" scopus.png
echo "Done. You can delete this script afterwards."
