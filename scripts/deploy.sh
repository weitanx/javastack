#!/usr/bin/env sh

# ------------------------------------------------------------------------------
# gh-pages 部署脚本
# @author Zhang Peng
# @since 2020/2/10
# ------------------------------------------------------------------------------

# 装载其它库
ROOT_DIR=$(
    cd $(dirname $0)/..
    pwd
)

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd ${ROOT_DIR}/docs/.temp

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

if [ -z "$GITHUB_TOKEN" ]; then
  msg='deploy'
  githubUrl=git@github.com:dunwu/java-tutorial.git
else
  msg='来自github actions的自动部署'
  githubUrl=https://dunwu:${GITHUB_TOKEN}@github.com/dunwu/java-tutorial.git
  git config --global user.name "dunwu"
  git config --global user.email "forbreak@163.com"
fi
git init
git add -A
git commit -m "${msg}"
git push -f "${githubUrl}" master:gh-pages # 推送到github gh-pages分支

cd -
rm -rf ${ROOT_DIR}/docs/.temp
