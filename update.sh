# 如果没有消息后缀，默认提交信息为 `:pencil: update content`
# 参考https://www.yunyoujun.cn/share/how-to-build-your-site/#%E5%A4%87%E4%BB%BD%E4%B8%8E%E8%87%AA%E5%8A%A8%E9%83%A8%E7%BD%B2
info=$1
if ["$info" = ""];
then info=":pencil: update content"
fi
hexo clean # 清除缓存
hexo d -g # 重新部署 Hexo
git config --global http.sslVerify "false"

git add -A
git commit -m "$info"
git push origin hexo

git help