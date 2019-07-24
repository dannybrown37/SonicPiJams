live_loop :bass do
  use_synth :tb303
  with_fx :flanger do
    sweet_adeline_verse_chords
    sweet_adeline_chorus_chords
  end
end

live_loop :hat do
  sample :drum_cymbal_closed, cutoff: rrand(101, 120), res: rrand(0.5, 0.99)
  sleep 0.125
end

live_loop :beat do
  with_fx :echo do
    sample :drum_heavy_kick, amp: 2
    sleep 0.75
    sample :drum_snare_soft, amp: 2
    sleep 0.25
  end
end

live_loop :glitch do
  sample :glitch_perc1
  sleep 3
  sample :glitch_perc2
  sleep 5
  sample :glitch_perc3
  sleep 6
  sample :glitch_perc4
  sleep 2
  sample :glitch_perc5
  sleep 8
end

live_loop :scale_riff do
  use_synth :dtri
  play_pattern_timed scale(:d, :blues_minor, num_octaves: 3), 0.125, release: 0.1
  sleep choose([4, 8, 12])
end

live_loop :scale_riff_2 do
  use_synth :dtri
  play_pattern_timed scale(:d, :blues_minor, num_octaves: 3), 0.125, release: 0.1
  sleep choose([4, 8, 12])
end

live_loop :lengthy_riff do
  use_synth :prophet
  16.times do
    notes = (ring :f4, :g4, :a4, :b4).tick
    play notes, release: 1.5, cutoff: rrand(70, 130)
    sleep 2
  end
  12.times do
    notes = (ring :bb5, :c5, :cs5, :b5).tick
    play notes, release: 1.5, cutoff: rrand(70, 130)
    sleep 2
  end
  4.times do
    notes = (ring :bb5, :c5, :b5, :d5).tick
    play notes, release: 1.5, cutoff: rrand(70, 130)
    sleep 2
  end
end

