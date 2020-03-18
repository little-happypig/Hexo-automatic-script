echo -e "┌-------------------┐"
echo -e "| \e[34mhexo 直接部署工具\e[0m |"
echo -e "|    \e[34m作者 小番茄\e[0m    |"
echo -e "└-------------------┘"
echo -e ""
echo -e ""


read -p "即将开始部署网页 > Github（仅部署不生成）[Y/n] " yn
if [[ $yn == "y" || $yn == "Y" ]]; then
	hexo d 2>&1 | tee odeploy.log
elif [[ $yn == "n" || $yn == "N" ]]; then
	echo -e "\e[31m您取消了网页部署\e[0m > Github" 2>&1 | tee odeploy.log
elif [[ $yn != "y" && $yn != "Y" && $yn != "n" && $yn != "N" ]]; then
	echo -e "\e[31m你都输了一些啥东东？\e[0m > $yn" 2>&1 | tee odeploy.log
fi
echo -e "\e[32m执行完毕 5秒后窗口自动关闭\e[0m"
sleep 5