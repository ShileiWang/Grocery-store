#!/bin/bash

:<<!

作者：王石磊
创建：2021-04-20
版本：V1.1
用意：Mac电脑软件初始化部署
Mac开机密码：stone

本脚本使用方式:
	1.打开"访达-其他-终端"
	2."cd 本脚本路径"（例如cd /Users/stone/Desktop）
	3."chmod +x install.sh"
	4."./install.sh"

解决问题：
安装微信需要额外输入"Y"以及点击回车
去掉安装软件过程中出现的弹窗

待解决的问题：
无论是否已安装软件均会覆盖安装

!

#Create direction
#	echo "stone" | sudo -S mkdir /Volumes/Mac

#mount samba
#	echo "stone" | sudo -S mount_smbfs //guest:@192.168.1.2/Mac/ /Volumes/Mac

#进入U盘
cd /Volumes/EasyU/Mac

#install office
	echo "stone" | sudo -S softwareupdate --agree-to-license --install-rosetta
	echo "stone" | sudo -S installer -pkg /Volumes/EasyU/Mac/Mac\ office\ 2019/Microsoft_Office_16.25.19051201_Installer.pkg -target /
	echo "stone" | sudo -S installer -pkg /Volumes/EasyU/Mac/Mac\ office\ 2019/Microsoft_Office_2019_VL*.pkg -target /

#install Adobe Reader
	hdiutil attach -quiet /Volumes/EasyU/Mac/【macOS】Acro*.dmg
	echo "stone" | sudo -S installer -pkg /Volumes/AcroRdrD*/Acro*.pkg -target /

#install WeChat
	hdiutil attach -quiet -noverify /Volumes/EasyU/Mac/微信.dmg
	cp -rf /Volumes/微信\ WeChat/WeChat.app /Applications

#install keka
	hdiutil attach -quiet /Volumes/EasyU/Mac/压缩解压Keka-1.2.7.dmg
	cp -rf /Volumes/Keka/Keka.app /Applications

#install Chrome
	hdiutil attach -quiet /Volumes/EasyU/Mac/Chrome浏览器.dmg
	cp -rf /Volumes/Google\ Chrome/Google\ Chrome.app /Applications

