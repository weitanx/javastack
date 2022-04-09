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

cd ${ROOT_DIR}

# 生成静态文件
npm install
npm run build

# 进入生成的文件夹
cd ${ROOT_DIR}/docs/.temp

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

git init
git checkout -b gh-pages && git add .
if [[ ${GITHUB_TOKEN} ]]; then
    MSG="使用 token 部署 gh-pages"
    PUSH_URL="https://dunwu:${GITHUB_TOKEN}@github.com/dunwu/java-tutorial.git"
else
    MSG="github actions 自动化部署 gh-pages"
    git config --global user.name "dunwu"
    git config --global user.email "forbreak@163.com"
    PUSH_URL=git@github.com:dunwu/java-tutorial.git
fi
git commit -m ${MSG}
git push --force --quiet ${PUSH_URL} gh-pages

#if [[ ${GITEE_TOKEN} ]]; then
#    echo "使用 token 公钥部署 gh-pages"
#    git push --force --quiet "https://turnon:${GITEE_TOKEN}@gitee.com/turnon/java-tutorial.git" gh-pages
#else
#    echo "使用 ssh 公钥部署 gh-pages"
#    git push -f git@gitee.com:turnon/java-tutorial.git gh-pages
#fi

cd ${ROOT_DIR}
