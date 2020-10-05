year = gets.to_i 

if year<1896 || year == 1916 || year == 1940 || year == 1944 || year == 2020
  puts"#{year}年は夏季オリンピックが開催されませんでした。"
else
  if year>2020
    if year%4 == 0
      puts"#{year}年は夏季オリンピックが開催されます。"
    else
      puts"#{year}年は夏季オリンピックが開催されません。"
    end
  else
    if year%4 == 0
      puts"#{year}年は夏季オリンピックが開催されました。"
    else
      puts"#{year}年は夏季オリンピックが開催されませんでした。"
    end
  end
end
