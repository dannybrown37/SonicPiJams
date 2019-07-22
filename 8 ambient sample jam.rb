live_loop :a do
  sample :loop_tabla, beat_stretch: 12
  sleep 12
end

live_loop :b do
  sample :ambi_sauna, amp: 0.05, beat_stretch: 4, attack: 3
  sleep 4
end

live_loop :c do
  sample :bass_trance_c, beat_stretch: 12
  sleep 12
end

live_loop :d do
  sample :glitch_perc2, amp: 0.2
  sleep 6
  sample :glitch_robot2, amp: 0.2
  sleep 6
  sample :glitch_bass_g, amp: 0.2
  sleep 6
  sample :glitch_perc3, amp: 0.2
  sleep 6
  sample :glitch_perc5, amp: 0.2
  sleep 6
  sample :glitch_robot1, amp: 0.2
  sleep 6
  sample :glitch_perc4, amp: 0.2
  sleep 6
  sample :glitch_perc1, amp: 0.2
  sleep 6
end

live_loop :e do
  sample :ambi_glass_rub, beat_stretch: 6, cutoff: 69, amp: 0.069
  sleep 6
end

live_loop :f do
  use_synth :prophet
  play choose([:c3, :eb3, :g3]), cutoff: rrand(70, 130), wave: choose([0, 1, 2])
  sleep 1
end
