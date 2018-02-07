## blog 模板

* [https://github.com/hexojs/hexo](https://github.com/hexojs/hexo)

* [https://hexo.io/docs](https://hexo.io/docs)


### Demo

* [https://github.com/ALISURE/hexo_demo](https://github.com/ALISURE/hexo_demo)
    * 该项目有两个分支：`master` 和 `source`
    * `master` 用于部署 `public` 目录中的内容，即静态站点的内容
    * `source` 是源码，用来生成 `public` 目录中的内容
    * `clone` 之后 `npm install` 即可
    

### 安装

* 安装Git

* 安装Node

* 安装hexo
    ```
    npm install hexo-cli -g
    ```
    

### 初体验

* 初始化
    ```
    hexo init <folder>
    cd <folder>
    npm install
    ```

* 启动服务器
    ```
    hexo server
    ```

* 访问页面
    ```
    http://localhost:4000/
    ```


### Configuration

> `_config.yml`

* `deploy` 响应命令 `hexo deploy`，比如部署到Github上
* `index_generator` 配置首页
* `url` 和 `root` 配置站点的地址和根目录


### Commands

* [https://hexo.io/docs/commands.html](https://hexo.io/docs/commands.html)


### Tag and Tag Plugins

* [https://hexo.io/docs/tag.html](https://hexo.io/docs/tag.html)

* [https://hexo.io/docs/tag-plugins.html](https://hexo.io/docs/tag-plugins.html)


### Asset Folders
> 比如 `images`, `CSS`, `javascript`

* [https://hexo.io/docs/asset-folders.html](https://hexo.io/docs/asset-folders.html)


### Data Files
> `_data`

* [https://hexo.io/docs/data-files.html](https://hexo.io/docs/data-files.html)


### Server

* [https://hexo.io/docs/server.html](https://hexo.io/docs/server.html)
```
hexo server  # 默认 4000 端口
hexo server -p 5000  # 指定 5000 端口
```

### Generating

> 编写好之后生成，会得到 `public` 文件夹，可在 `_config.yml` 中配置

* [https://hexo.io/docs/generating.html](https://hexo.io/docs/generating.html)
```
hexo g[enerate]
```


### Deployment

> 部署到服务器

* All generated files are saved in the public folder. 
You can copy them to wherever you like.

* [https://hexo.io/docs/deployment.html](https://hexo.io/docs/deployment.html)

* 部署到Github

    * 安装插件
    ```
    npm install hexo-deployer-git --save
    ```
    
    * 编辑 `_config.yml`
    ```
    deploy:
      type: git
      repo: <repository url>
      branch: [branch]
      message: [message]
    ```
    例子：
    ```
    deploy:
      type: git
      repo: https://github.com/ALISURE/hexo_site
      branch: master
    ```
    
    * 生成并部署部署
    ```
    hexo g[enerate]  # 只生成
    hexo deploy  # 只部署
    ```
    或者：
    ```
    hexo generate --deploy  # 生成并部署
    ```


### Permalinks

* [https://hexo.io/docs/permalinks.html](https://hexo.io/docs/permalinks.html)


### Themes

* [https://hexo.io/docs/themes.html](https://hexo.io/docs/themes.html)

* 下载主题，放在 `themes` 下，例如
```
git clone https://github.com/klugjo/hexo-theme-anodyne themes/anodyne
```

* 修改 `_config.yml` 中的 `theme`, 例如
```
# Extensions
## Plugins: http://hexo.io/plugins/
## Themes: http://hexo.io/themes/
theme: anodyne
```

* 修改其它必要的信息
    * 比如修改 `themes` 中的 `_config.yml`

* OVER


### Templates

* [https://hexo.io/docs/templates.html](https://hexo.io/docs/templates.html)


### Variables

* [https://hexo.io/docs/variables.html](https://hexo.io/docs/variables.html)


### Helpers

> Helpers are used in templates to help you insert snippets quickly. 
Helpers cannot be used in source files.

* [https://hexo.io/docs/helpers.html](https://hexo.io/docs/helpers.html)


### Internationalization 

* [https://hexo.io/docs/internationalization.html](https://hexo.io/docs/internationalization.html)

* 在 `languages` 中创建 `xxx.yml` 文件

* 在 `_config.yml` 中配置 `language: xxx`

* [Path](https://hexo.io/docs/internationalization.html#Path)


### Plugins

* [https://hexo.io/docs/plugins.html](https://hexo.io/docs/plugins.html)
