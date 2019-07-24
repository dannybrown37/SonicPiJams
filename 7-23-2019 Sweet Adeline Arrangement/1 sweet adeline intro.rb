define :sweet_adeline_riff do
  moving_line = (ring :g3, :fs3, :e3, :d3)
  pedal_tone = :b3
  4.times do
    play moving_line.tick
    sleep 0.5
    play pedal_tone, amp: 0.39, cutoff: 69
    sleep 0.5
  end
  moving_line = (ring :f3, :e3, :d3, :c3)
  pedal_tone = :d4
  4.times do
    play moving_line.tick
    sleep 0.5
    play pedal_tone, amp: 0.39, cutoff: 69
    sleep 0.5
  end
  moving_line = (ring :eb3, :d3, :c3, :bb2)
  pedal_tone = :eb4
  4.times do
    play moving_line.tick
    sleep 0.5
    play pedal_tone, amp: 0.39, cutoff: 69
    sleep 0.5
  end
end

define :sweet_adeline_riff_first_ending do
  play :c3, sustain: 0.69
  sleep 1
  play :e3, sustain: 0.69
  play:g3, sustain: 0.69
  play :c4, sustain: 0.69
  sleep 1
  play :d3, sustain: 0.69
  sleep 1
  play :fs3, sustain: 0.69
  play:a3, sustain: 0.69
  play :c4, sustain: 0.69
  sleep 1
end

define :sweet_adeline_riff_second_ending do
  2.times do
    play :g2
    play :d3
    play :g3
    play :b3
    play :d3
    play :g3
    sleep 1
  end
  play :g2, sustain: 2
  play :d3, sustain: 2
  play :f3, sustain: 2
  play :b3, sustain: 2
  play :d3, sustain: 2
  play :g3, sustain: 2
  sleep 2
end

define :sweet_adeline_intro do
  use_bpm 120
  use_synth :dsaw
  sweet_adeline_riff
  sweet_adeline_riff_first_ending
  sweet_adeline_riff
  sweet_adeline_riff_first_ending
  sweet_adeline_riff_second_ending
end

sweet_adeline_intro