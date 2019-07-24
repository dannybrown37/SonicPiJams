live_loop :beats do
  with_fx :echo, phase: 0.125, mix: 0.4 do
    sample :bd_tek
    sleep 0.5
    sample :sn_dolf, amp: 0.69
    sleep 0.5
  end
end

live_loop :cymbals do
  sample :glitch_perc5, amp: 0.1
  sleep rrand(0.125, 0.5)
end

live_loop :bass do
  use_synth :tb303
  synth :tb303, note: choose([:e1, :c1, :g1, :a1, :d1]), release: rrand(3, 3.9), cutoff: rrand(70, 130), cutoff_attack: rrand(0.1, 1), amp: rrand(0.2, 0.4)
  sleep 4
end

live_loop :arps do
  use_synth :prophet
  play_pattern_timed chord(:E3, :m13), 0.05, amp: 0.5, cutoff: rrand(70, 130)
  sleep rrand(4, 8)
  play_pattern_timed chord(:A3, :m9), [rrand(0.05, 0.1), rrand(0.05, 0.1), rrand(0.05, 0.1), rrand(0.05, 0.1), rrand(0.1, 0.3)], amp: 0.5, cutoff: rrand(70, 130)
  sleep rrand(4, 8)
end