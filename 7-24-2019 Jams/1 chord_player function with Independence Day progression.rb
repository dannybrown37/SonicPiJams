define :chord_player do |root, type, repeats|
  repeats.times do
    play chord(root, type), release: 0.4
    sleep 0.5
  end
end

4.times do
  chord_player :b, :minor, 4
  chord_player :bb, :major, 4
  chord_player :b, :major, 4
  chord_player :g, :major, 4
  chord_player :bb, :major, 4
  chord_player :a, :major, 4
  chord_player :fs, :minor, 4
  chord_player :g, :major, 4
end