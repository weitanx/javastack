---
home: true
heroImage: https://raw.githubusercontent.com/dunwu/java-tutorial/gh-pages/img/dunwu-logo.png
heroText: JAVA-TUTORIAL
tagline: ☕ java-tutorial 是一个 Java 教程，汇集一个老司机在 Java 领域的十年积累。
actionText: 快速开始 →
actionLink: /pages/24112f/
bannerBg: none

features: # 可选的
  - title: 润物无声
    details: 只做增强不做改变，引入它不会对现有工程产生影响，如丝般顺滑。
  - title: 效率至上
    details: 只需简单配置，即可快速进行单表 CRUD 操作，从而节省大量时间。
  - title: 丰富功能
    details: 代码生成、自动分页、逻辑删除、自动填充等功能一应俱全。

postList: none
---

<p align="center">
  <a href="https://github.com/dunwu/java-tutorial" target="_blank">
    <img alt="star" class="no-zoom" src="https://img.shields.io/github/stars/dunwu/java-tutorial">
  </a>

  <a href="https://github.com/dunwu/java-tutorial" target="_blank">
    <img alt="fork" class="no-zoom" src="https://img.shields.io/github/forks/dunwu/java-tutorial">
  </a>

  <a href="https://github.com/dunwu/java-tutorial/commits/master" target="_blank">
    <img alt="commit" class="no-zoom" src="https://img.shields.io/github/commit-activity/y/dunwu/java-tutorial">
  </a>

  <a href="https://www.apache.org/licenses/LICENSE-2.0" target="_blank">
    <img alt="license" class="no-zoom" src="https://badgen.net/github/license/dunwu/java-tutorial">
  </a>
</p>

<br/>

### 代码托管

> **[Gitee](https://gitee.com/dunwu/java-tutorial)** | **[Github](https://github.com/dunwu/java-tutorial)**

<script>
export default {
  mounted () {
    var xmlHttp = new XMLHttpRequest()
    xmlHttp.open("GET", "https://img.shields.io/maven-central/v/com.dunwu/java-tutorial.json", false)
    xmlHttp.send(null)
    var mpVersion = JSON.parse(xmlHttp.responseText).value.replace('v', '')
    var codeNodeList = document.querySelectorAll('code')
    for (var i = 0; i < codeNodeList.length; i++) {
        codeNodeList[i].innerHTML = codeNodeList[i].innerHTML.replace('latest-version', mpVersion)
    }
  }
}
</script>
