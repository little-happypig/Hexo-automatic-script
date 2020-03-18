echo -e "┌-------------------┐"
echo -e "| \e[34mhexo 直接服务工具\e[0m |"
echo -e "|    \e[34m作者 小番茄\e[0m    |"
echo -e "└-------------------┘"
echo -e ""
echo -e ""


read -p "即将启动本地服务（仅服务不生成）[Y/n] " yn
if [[ $yn == "y" || $yn == "Y" ]]; then
	hexo s 2>&1 | tee oserver.log
elif [[ $yn == "n" || $yn == "N" ]]; then
	echo -e "\e[31m您取消了服务启动\e[0m > Github" 2>&1 | tee oserver.log
elif [[ $yn != "y" && $yn != "Y" && $yn != "n" && $yn != "N" ]]; then
	echo -e "\e[31m你都输了一些啥东东？\e[0m > $yn" 2>&1 | tee oserver.log
fi
echo -e "\e[32m执行完毕 5秒后窗口自动关闭\e[0m"
sleep 5