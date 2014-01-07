# Hotto-Mouse
## sfc2013-design-strategy
This document is made by [gitfab](http://gitfab.org)
---
#コンセプト
- 長時間にわたる作業をすると知らぬ間に体温が奪われてたりする
- 冬場は手がかじかんでマウスが使いづらい
- 寒いときは暖かく、熱いときはひんやり
- ほっとしながら作業できたらいいな

---
#ペルチェ素子
![th_2014-01-06 19.11.12.jpg](https://raw.github.com/keroxp/Hotto-Mouse/master/gitfab/resources/th_2014-01-06-19.11.12.jpg)
2種類の金属の接合部に電流を流すと、片方の金属からもう片方へ熱が移動するというペルティエ効果を利用した板状の半導体素子。直流電流を流すと、一方の面が吸熱し、反対面に発熱が起こる。（Wikipediaより)

---
#設計指針
- Arduinoでペルチェ素子を制御して寒暖差をコントロールする
- ペルチェ素子の制御にはDCモータドライバを使用
- 電源は外部電源（5V）を使用
- プログラムはRubyを使用

---
#電子回路
![th_2014-01-06 19.11.07.jpg](https://raw.github.com/keroxp/Hotto-Mouse/master/gitfab/resources/th_2014-01-06-19.11.07.jpg)

---
#プログラム設計
- Linda（linda.masuilab.org）という分散処理向けの共有タプルスペースに書きこまれているデルタS112の室温センシングデータをwatch
- イベント駆動でデータを読み続ける
- 室温が閾値を上回ったら冷却、下回ったら加熱
- 閾値はわりと適当（変えられるから）
- DCモータドライバを使用しているので、arduinoへdegital writeをtoggleすることで同じ面を冷却、加熱の制御をすることができる

---
#実装コード


---
#デモ用コード


---
#使ってみた
![th_2014-01-07 13.45.10.jpg](https://raw.github.com/keroxp/Hotto-Mouse/master/gitfab/resources/th_2014-01-07-13.45.10.jpg)

---
