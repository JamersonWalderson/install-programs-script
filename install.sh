#!/usr/bin/env bash

# Atualiza pacotes
sudo apt update

# Verifica dependências
if ! command -v flatpak >/dev/null 2>&1; then
  echo "Erro: Flatpak não está instalado"
  sudo apt update &&
  sudo apt install flatpak &&
  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
  exit 1
fi

if ! flatpak remotes | grep -q flathub; then
  echo "Erro: Flathub não está configurado como remoto"
  exit 1
fi

# Lista de aplicativos a serem instalados
flatpaklist=(
  com.spotify.Client 
  com.valvesoftware.Steam 
  org.libreoffice.LibreOffice 
  org.telegram.desktop
  com.google.Chrome
  com.discordapp.Discord
  org.videolan.VLC
  com.visualstudio.code
  org.gnome.gedit
  org.gimp.GIMP
  io.github.mimbrero.WhatsAppDesktop
  com.anydesk.Anydesk
  com.google.AndroidStudio
  io.dbeaver.DBeaverCommunity
  rest.insomnia.Insomnia
  io.github.Figma_Linux.figma_linux
  com.jgraph.drawio.desktop
  com.github.jkotra.eovpn
  com.brave.Browser
  com.microsoft.Edge
  com.opera.Opera
  org.filezillaproject.Filezilla
  org.mozilla.firefox
  uk.org.greenend.chiark.sgtatham.putty
  com.wps.Office
)

# Instala aplicativos
for app in "${flatpaklist[@]}"; do
  if flatpak list | grep -q "$app"; then
    echo "O aplicativo $app já está instalado"
  else
    echo "Instalando $app"
    if ! flatpak install flathub --system "$app" -y; then
      echo "Erro: Falha ao instalar $app"
    fi
  fi
done

# Atualiza pacotes flatpak
echo "Atualizando pacotes flatpak"
sudo flatpak update -y

# Instala as dependências necessárias para desenvolver em Python
echo "Instalando dependências do python"
sudo apt update &&
sudo apt install  python3.10 python3-pip python3.10-venv -y

# Instalando o Git
echo "Instalando o Git"
sudo apt install git -y