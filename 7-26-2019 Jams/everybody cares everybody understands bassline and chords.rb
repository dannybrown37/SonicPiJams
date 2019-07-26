define :chord_player do |root, type, repeats|
  repeats.times do
    play chord(root, type), release: 0.2, cutoff: rrand(70, 130), res: rrand(0.5, 0.99)
    sleep 0.25
  end
end

define :bass_line do |note, time|
  release_time = time * 0.9
  play note, release: release_time, cutoff: rrand(70, 130), amp: 0.1
  sleep time
end

use_bpm 100

live_loop :everybody_cares_chords do
  use_synth :prophet
  2.times do
    chord_player :e3, :minor, 32
    chord_player :g3, :major, 32
    2.times do
      chord_player :f3, :major, 8
      chord_player :c3, :major, 8
      chord_player :b3, :m7, 16
    end
  end
  chord_player :f3, :major, 8
  chord_player :c3, :major, 8
  chord_player :b3, :m7, 32
  # chorus
  chord_player :g3, :major, 16
  chord_player :f3, :major, 8
  chord_player :c3, :major, 8
  chord_player :e3, :minor, 16
  chord_player :b3, :m7, 16
end


live_loop :everybody_cares_bass_line do
  use_synth :tb303
  2.times do
    bass_line :e1, 4
    bass_line :cs2, 2
    bass_line :c2, 2
    bass_line :g2, 4
    bass_line :fs2, 4
    2.times do
      bass_line :f2, 2
      bass_line :c2, 2
      bass_line :b1, 4
    end
  end
  bass_line :f2, 2
  bass_line :c2, 2
  bass_line :b1, 2
  bass_line :a1, 2
  bass_line :g1, 2
  bass_line :fs1, 2
  # chorus
  2.times do
    bass_line :g1, 4
    bass_line :f1, 2
    bass_line :c2, 2
    bass_line :e1, 1
    bass_line :fs1, 1
    bass_line :g1, 1
    bass_line :a1, 1
    bass_line :b1, 4
  end
  
end