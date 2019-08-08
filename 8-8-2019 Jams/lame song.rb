define :bass_line do |note, time|
  release_time = time * 0.9
  play note, release: release_time, cutoff: rrand(70, 130), amp: 0.169
  sleep time
end

define :chord_player do |root, type, repeats|
  repeats.times do
    play chord(root, type), release: 0.2, cutoff: rrand(70, 130), res: rrand(0.5, 0.99)
    sleep 0.25
  end
end

use_random_seed 69
use_bpm 69

live_loop :chords do
  use_synth :chiplead
  3.times do
    chord_player :e5, :m7, 4
    chord_player :c5, :m13, 4
    chord_player :f5, :major, 4
    chord_player :f4, :major, 4
  end
  chord_player :g5, :major, 8
  chord_player :ab5, :major, 4
  chord_player :bb5, :major, 4
end

live_loop :arps do
  use_synth :prophet
  3.times do
    play_pattern_timed chord(:E3, :m7), 0.25, cutoff: rrand(80,130)
    play_pattern_timed chord(:C3, :m13), 0.142857142857, cutoff: rrand(80,130)
    play_pattern_timed chord(:F3, :major), 0.33, cutoff: rrand(80,130)
    play_pattern_timed (ring :r, :B3, :A3, :G3, :F3), 0.2, cutoff: rrand(80,130)
  end
  play_pattern_timed chord(:G3, :maj9), 0.2, cutoff: rrand(80,130)
  play_pattern_timed chord(:G4, :maj9), 0.2, cutoff: rrand(80,130)
  descent = (ring :Ab5, :Gb5, :F5, :Eb5, :Db5, :C4, :Bb4,
             :Ab4, :Gb3, :Ab4, :Bb3, :Ab3, :Gb3, :r)
  play_pattern_timed descent, 0.142857142857, cutoff: rrand(80,130)
end

live_loop :bass do
  use_synth :tb303
  3.times do
    bass_line :e1, 1
    bass_line :c1, 1
    bass_line :f1, 2
  end
  4.times do
    bass_line :g1, 0.25
    bass_line :g2, 0.25
  end
  2.times do
    bass_line :ab1, 0.25
    bass_line :ab2, 0.25
  end
  2.times do
    bass_line :bb1, 0.25
    bass_line :bb2, 0.25
  end
end

with_fx :panslicer, wave: 0 do
  with_fx :level, amp: 0.169 do
    with_fx :reverb, room: 0.4, mix: 0.4 do
      live_loop :drums do
        in_thread do
          hat_5
        end
        in_thread do
          kick_5 :bd_haus
        end
        snare_offbeat :sn_generic
      end
    end
  end
end