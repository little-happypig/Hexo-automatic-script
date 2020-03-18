echo -e "┌-------------------┐"
echo -e "| \e[34mhexo 页面新建工具\e[0m |"
echo -e "|    \e[34m作者 小番茄\e[0m    |"
echo -e "└-------------------┘"
echo -e ""
echo -e ""


read -p "输入页面名字 > " name
read -p "即将创建页面 > $name [Y/n] " yn
if [[ $yn == "y" || $yn == "Y" ]]; then
	hexo new page $name 2>&1 | tee newpage.log
elif [[ $yn == "n" || $yn == "N" ]]; then
	echo -e "\e[31m您取消了页面\e[0m > $name \e[31m的创建\e[0m" 2>&1 | tee newpage.log
elif [[ $yn != "y" && $yn != "Y" && $yn != "n" && $yn != "N" ]]; then
	echo -e "\e[31m你都输了一些啥东东？\e[0m > $yn" 2>&1 | tee newpage.log
fi
echo -e "\e[32m执行完毕 5秒后窗口自动关闭\e[0m"
sleep 5