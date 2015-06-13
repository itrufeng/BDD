# language: zh-CN

功能: 登录
  我叫彭宝全，我开发了一个登录需要测试。
  我有几个场景想测试呢。
  我要开始了哦

  场景: 登录失败
    假如我在Login界面
    并且我点击Username
    并且我输入kare
    并且我点击Password
    并且我输入123456
    当我点击Login
    那么我应该看到密码不正确
    并且截个屏

  场景: 登录成功
    假如我在Login界面
    并且我点击Username
    并且我输入kare
    并且我点击Password
    并且我输入kare123
    当我点击Login
    那么我跳转到Home界面
    并且截个屏
