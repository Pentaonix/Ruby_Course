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
    city: "ベルリン"
  },
  {
    year: '1920年',
    city: "アントワープ"
  },
  {
    year: '1924年',
    city: "パリ"
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
olympic.each do |year|
  puts year[:year] + year[:city]
  puts "-------------------------"
end



