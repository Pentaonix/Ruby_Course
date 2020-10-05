b = (1..15).to_a.sample(5)
i = (16..30).to_a.sample(5)
n = (31..45).to_a.sample(5)
g = (46..60).to_a.sample(5)
o = (61..75).to_a.sample(5)

bingo = ["B","I","N","G","O"]

for j in 0..4
  print("#{bingo[j]}".rjust(3) + "|")
end

print("\n")

for j in 0..4
  print("#{b[j]}".rjust(3) +"|")
  print("#{i[j]}".rjust(3) +"|")

  if j != 2
  print("#{n[j]}".rjust(3) +"|")
  else
    print(" ".rjust(3) + "|")
  end
  print("#{g[j]}".rjust(3) +"|")
  print("#{o[j]}".rjust(3) +"|")
  print("\n")
end