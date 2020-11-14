### 简介

这是一个小项目，实现的是一个在线的会面预约系统，用户 A 可以发布自己可以会面的时间，B 可以根据自己的时间从 A 发布的时间中选取时间，以达成一个会面邀约。

### 项目概况
项目使用 Ruby On Rails 框架，为了有个良好的样式引入了 bootstrap 作为前端 UI 库；因为个人不是很喜欢 Rails 的 [Active Record Associations](https://guides.rubyonrails.org/association_basics.html) 层面的 belongs_to、has_many 的写法，加之项目 model 层较为简单，所以在这个项目中没有使用这些；为了保证用户前端页面数据的事实性，使用了 js 轮训请求刷新页面，同时为了避免轮训导致的服务端资源浪费，结合 Redis 当没有数据跟新的时候，直接返回，避免无意义的查库等业务代码执行。

### 依赖
- Ruby 版本

  ruby 2.4.10

- 系统依赖

  Unix 类系统，我本地开发使用的 Mac OS, 产线使用的是阿里云的 ubuntu 系统

- 数据库

  MySQL-5.7，MySQL5.x 应该都可以

### 部署开发环境
- git clone
 
  git clone git@github.com:ItsWewin/project-live-calendar.git
- 创建数据库并导入数据

  创建数据库 project_live_calendar_development，并 source 项目中的 sql 文件 project_live_calendar_development.sql

- 启动项目
  ```
  cd project-live-calendar
  bundle install
  rails s
  ```