olympic = [
  {
    year: '1896年',
    city: "アテネ"
  },
  {
    year: '1900年',
    city: "パリ"
  },
  {
    year: '1904年',
    city: "セントルイス"
  },
  {
    year: '1908年',
    city: "ロンドン"
  },
  {
    year: '1912年',
    city: "ストックホルム"
  },
  {
    year: '1916年',
    city: "ベルリン",
    fact: "第一次世界大戦で中止"
  },
  {
    year: '1920年',
    city: "アントワープ"
  },
  {
    year: '1924年',
    city: "パリ",
    fact: "同じ都市での２回目の開催は初"
  },
  {
    year: '1928年',
    city: "アムステルダム"
  },
  {
    year: '1932年',
    city: "ロサンゼルス"
  },
]
olympic.each do |olp|
  puts olp[:year] + olp[:city]
  if olp[:fact] != nil
    puts "豆知識: #{olp[:fact]}"
  end
  puts "-------------------------"
end

