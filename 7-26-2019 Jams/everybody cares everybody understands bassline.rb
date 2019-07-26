define :bass_line do |note, time|
  release_time = time * 0.9
  play note, release: release_time, cutoff: rrand(70, 130), amp: 0.1
  sleep time
end

use_bpm 100

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
      #bass_line :cs2, 0.5
      #bass_line :ds2, 0.5
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
    bass_line :b1, 4
    bass_line :f1, 4
    bass_line :c2, 4
    bass_line :e1, 1
    bass_line :fs1, 1
    bass_line :g1, 1
    bass_line :a1, 1
  end
  
end