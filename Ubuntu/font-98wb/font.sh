#!/bin/bash

if [ ! -d ~/.local/share/fonts/ ];then
   mkdir ~/.local/share/fonts
fi

if [ -f ~/.local/share/fonts/98WB-0.otf ];then
   rm -rf ~/.local/share/fonts/98WB*.otf
fi

cp -rf ./98WB*.otf ~/.local/share/fonts

cd ~/.local/share/fonts

if [ -d /usr/share/fonts/98WB ];then
  sudo rm -rf /usr/share/fonts/98WB
fi

sudo mkfontscale

sudo mkfontdir

sudo fc-cache -fv

echo "98WB专用字体更新完毕"
