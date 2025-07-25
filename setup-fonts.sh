echo "Nerd Fonts --------------------------------------------------------------"
declare -a fonts=(
  BitstreamVeraSansMono
  CodeNewRoman
  DroidSansMono
  FiraCode
  FiraMono
  Go-Mono
  Hack
  Hermit
  JetBrainsMono
  Meslo
  Noto
  Overpass
  ProggyClean
  RobotoMono
  SourceCodePro
  SpaceMono
  Ubuntu
  UbuntuMono
  VictorMono
)

version='2.1.0'
fonts_dir="${HOME}/.local/share/fonts"

for font in "${fonts[@]}"; do
  zip_file="${font}.zip"
  download_url="https://github.com/ryanoasis/nerd-fonts/releases/download/v${version}/${zip_file}"
  echo "Downloading $download_url"
  wget "$download_url"
  unzip -o "$zip_file" -d "$fonts_dir"
  rm "$zip_file"
done

find "$fonts_dir" -name '*Windows Compatible*' -delete

fc-cache -fv
