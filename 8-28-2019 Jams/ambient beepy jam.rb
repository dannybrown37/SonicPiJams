use_bpm 120

live_loop :beeps do
  with_fx :echo do
    with_fx :level, amp: 0.3 do
      sample :elec_blip
      sleep 1
      sample :elec_blip2
      sleep 0.5
    end
  end
end

live_loop :beeps_2 do
  sample :elec_bong
  sleep 0.75
  sample :elec_blup
  sleep 0.75
end

live_loop :beeps_3 do
  length = 1
  sounds = (ring :elec_ping, :elec_plip, :elec_pop, :elec_filt_snare).tick
  sample sounds, finish: length / 4
  sleep length
end

live_loop :beeps_4 do
  sleep 8
  sample :ambi_lunar_land
  sleep 8
end

live_loop :beeps_5 do
  sample :ambi_swoosh
  sleep 4
end

live_loop :beep_6 do
  sample :tabla_ghe1
  sleep 0.5
  hits = (ring :tabla_ghe2, :tabla_ghe3, :tabla_ghe4, :tabla_ghe5, :tabla_ghe6).tick
  4.times do
    sample hits
    sleep 0.25
  end
end

live_loop :beep_7 do
  play_pattern_timed [:e3, :g3, :b3, :e4, :g4, :b4], 0.25
  play_pattern_timed [:d3, :f3, :a3, :d4, :f4, :a4], 0.25
  2.times do
    play_pattern_timed [:c3, :e3, :g3, :c4, :e4, :g4], 0.25
  end
end
