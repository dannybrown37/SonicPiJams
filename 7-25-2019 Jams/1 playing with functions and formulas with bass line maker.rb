define :bass_line do |riff, time|
  release_time = time * 0.9
  play riff, release: release_time, cutoff: rrand(70, 130), amp: 0.1
  sleep time
end

use_bpm 88

live_loop :bass do
  use_synth :tb303
  bass_line :a1, 2
  bass_line :c1, 2
  bass_line :e1, 2
  bass_line :eb1, 0.5
  bass_line :d1, 0.5
  bass_line :db1, 0.5
  bass_line :c1, 0.5
end

live_loop :kit do
  2.times do
    sample :bd_fat, res: 1, cutoff: 100, amp: 2
    sleep 0.5
  end
  4.times do
    sample :drum_cymbal_closed
    sleep 0.125
  end
end