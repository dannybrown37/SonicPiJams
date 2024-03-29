define :sweet_adeline_riff do
  with_fx :echo do
    moving_line = (ring :g3, :fs3, :e3, :d3)
    pedal_tone = :b3
    4.times do
      play moving_line.tick, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
      sleep 0.25
      play pedal_tone, amp: 0.39, cutoff: 69
      sleep 0.25
    end
    moving_line = (ring :f3, :e3, :d3, :c3)
    pedal_tone = :d4
    4.times do
      play moving_line.tick, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
      sleep 0.25
      play pedal_tone, amp: 0.39, cutoff: 69
      sleep 0.25
    end
    moving_line = (ring :eb3, :d3, :c3, :bb2)
    pedal_tone = :eb4
    4.times do
      play moving_line.tick, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
      sleep 0.25
      play pedal_tone, amp: 0.39, cutoff: 69
      sleep 0.25
    end
  end
end

define :sweet_adeline_riff_first_ending do
  with_fx :echo do
    play :c3, sustain: 0.345, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    sleep 0.5
    play :e3, sustain: 0.345, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    play:g3, sustain: 0.345, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    play :c4, sustain: 0.345, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    sleep 0.5
    play :d3, sustain: 0.345, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    sleep 0.5
    play :fs3, sustain: 0.345, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    play:a3, sustain: 0.345, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    play :c4, sustain: 0.345, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    sleep 0.5
  end
end

define :sweet_adeline_riff_second_ending do
  2.times do
    play :g2, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    play :d3, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    play :g3, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    play :b3, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    play :d3, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    play :g3, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
    sleep 0.5
  end
  play :g2, sustain: 1, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :d3, sustain: 1, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :f3, sustain: 1, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :b3, sustain: 1, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :d3, sustain: 1, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :g3, sustain: 1, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  sleep 1
end

define :sweet_adeline_intro do
  use_synth :dsaw
  sweet_adeline_riff
  sweet_adeline_riff_first_ending
  sweet_adeline_riff
  sweet_adeline_riff_first_ending
  sweet_adeline_riff_second_ending
end

sweet_adeline_intro