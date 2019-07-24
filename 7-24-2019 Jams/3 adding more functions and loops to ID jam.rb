define :chord_straight_rhythm_player do |root, type, repeats|
  repeats.times do
    play chord(root, type), release: 0.2, cutoff: rrand(70, 130), res: rrand(0.5, 0.99)
    sleep 0.25
  end
end

define :chord_rhythm_randomizer do |key, type, notes|
  notes.times do
    play choose([chord(key, type), :r])
    sleep 0.5
  end
end

define :melody_randomizer do |key, type, notes|
  notes.times do
    play choose(chord(key, type))
    sleep 0.5
  end
end

live_loop :melody do
  use_random_seed 69
  melody_randomizer :b5, :minor, 4
  melody_randomizer :bb5, :major, 4
  melody_randomizer :b5, :major, 4
  melody_randomizer :g5, :major, 4
  melody_randomizer :bb5, :major, 4
  melody_randomizer :a5, :major, 4
  melody_randomizer :fs5, :minor, 4
  melody_randomizer :g5, :major, 4
end

live_loop :high_chords do
  use_random_seed 69
  chord_rhythm_randomizer :b4, :minor, 4
  chord_rhythm_randomizer :bb4, :major, 4
  chord_rhythm_randomizer :b4, :major, 4
  chord_rhythm_randomizer :g4, :major, 4
  chord_rhythm_randomizer :bb4, :major, 4
  chord_rhythm_randomizer :a4, :major, 4
  chord_rhythm_randomizer :fs4, :minor, 4
  chord_rhythm_randomizer :g4, :major, 4
end

live_loop :independence_day_chords do
  use_synth :dtri
  chord_player :b3, :minor, 8
  chord_player :bb3, :major, 8
  chord_player :b3, :major, 8
  chord_player :g3, :major, 8
  chord_player :bb3, :major, 8
  chord_player :a3, :major, 8
  chord_player :fs3, :minor, 8
  chord_player :g3, :major, 8
end

live_loop :id_bass do
  use_synth :tb303
  notes = (ring, :b1, :bb1, :b1, :g1, :bb1, :a1, :fs1, :g1).tick
  play notes, amp: 0.1, cutoff: rrand(70, 130)
  sleep 1.75
  play notes, amp: 0.1, release: 0.125, sustain: 0.125, cutoff: rrand(70, 130)
  sleep 0.25
end

live_loop :kit do
  7.times do
    sample :bd_gas
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
    sample :drum_snare_soft
    sleep 0.25
    sample :drum_cymbal_closed
    sleep 0.25
  end
  sample :bd_gas
  sleep 0.125
  sample :bd_gas
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_cymbal_closed
  sleep 0.125
  sample :drum_snare_hard
  sleep 0.25
  sample :drum_cymbal_closed
  sleep 0.0625
  sample :drum_cymbal_closed
  sleep 0.0625
  sample :drum_cymbal_closed
  sleep 0.0625
  sample :drum_cymbal_closed
  sleep 0.0625
end