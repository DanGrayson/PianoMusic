\version "2.16.0"  % necessary for upgrading to future LilyPond versions.
#(set-global-staff-size 30)

\paper  {
  #(define fonts
    (make-pango-font-tree "SimSun"
                          "Nimbus Sans"
                          "Luxi Mono"
                          (/ staff-height pt 20)))

  #(set-paper-size "letter")

  left-margin = 1\in
  right-margin = 1\in
  top-margin = 1\in
  bottom-margin = 1\in

  markup-system-spacing #'basic-distance = #15
  system-system-spacing #'padding = #8
}

\header{
  title = "下雨了"
  tagline = ""
}

\score {
  \relative c' {
  \time 2/4
  a a8. b16 | c8 c b (a) | e'8. e16 e8 (f) | e4. r8 | \break
  e8. e16 f8 e8 | a8. a16 f8 e8 | d8 e16 (f16) e8 e | b4. r8 | \break
  e8. e16 c8 b8 | a8. a16 c8 c8 | b8 b16 b16 b8 c8 | a4. r8 |
  \bar "|."
}

\addlyrics {
  下 雨 啦 | 下 雨 啦! | 下 个 没 | 完, |
  我 们 很 想 | 出 去 游 泳 | 可 是 没 有 | 伞, |
  我 的 那 双 | 木 板 拖 鞋,| 红 带 子 又 已 | 断。 |
}

\addlyrics {
  _ _ _ | _ _ _ | _ _ _ | _ |
  小 _ 野 鸡 | 不 停 啼 叫, | 声 _ 声 _ | 传, |
  小 野 鸡 _ | 你 可 寒 冷, | 你 可 _ 孤 _ | 单？
}

\addlyrics {
  _ _ _ | _ _ _ | _ _ _ | _ |
  从 那 清 晨 | 一 直 下 到 | 天 黑 夜 _ | 晚, |
  下 雨 啦 - | 下 雨 啦, _ | 下 个 _ 没 _ | 完。
}
}
