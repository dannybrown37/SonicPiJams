live_loop :foo do
  3.times do
    use_synth :prophet
    play :e1, release: 8, cutoff: rrand(70, 130)
    sleep 8
  end
  1.times do
    use_synth :prophet
    play :c1, release: 8, cutoff: rrand(70, 130)
    sleep 8
  end
end

live_loop :bar do
  basicbeat
end

live_loop :blah do
  use_synth :chiplead
  play choose([:e3, :g3, :a3, :b3, :e4, :g4, :a4, :b4, :e5, :g5, :a4, :b5]), amp: rrand(0.1, 0.3)
  sleep rrand(0.10, 0.25)
end