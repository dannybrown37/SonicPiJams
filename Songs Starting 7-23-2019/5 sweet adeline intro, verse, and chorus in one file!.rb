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
  play :g2, sustain: 0.5, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :d3, sustain: 0.5, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :f3, sustain: 0.5, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :b3, sustain: 0.5, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :d3, sustain: 0.5, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  play :g3, sustain: 0.5, cutoff: rrand(70, 130), res: rrand(0.5, 0.99), wave: choose([0, 1, 2])
  sleep 1
end

define :sweet_adeline_intro do
  sweet_adeline_riff
  sweet_adeline_riff_first_ending
  sweet_adeline_riff
  sweet_adeline_riff_first_ending
  sweet_adeline_riff_second_ending
end

define :sweet_adeline_verse_chords do
  4.times do
    16.times do
      notes = (ring :bb1, :bb2, :bb3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
    16.times do
      notes = (ring :eb1, :eb2, :eb3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
    16.times do
      notes = (ring :d1, :d2, :d3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
    16.times do
      notes = (ring :g1, :g2, :g3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
  end
end

define :sweet_adeline_chorus_chords do
  3.times do
    8.times do
      notes = (ring :eb1, :eb2, :eb3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
    8.times do
      notes = (ring :bb1, :bb2, :bb3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
    8.times do
      notes = (ring :f1, :f2, :f3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
    8.times do
      notes = (ring :gs1, :gs2, :gs3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
    16.times do
      notes = (ring :cs1, :cs2, :cs3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
    16.times do
      notes = (ring :e1, :e2, :e3).tick
      play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
      sleep 0.125
    end
  end
  8.times do
    notes = (ring :eb1, :eb2, :eb3).tick
    play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
    sleep 0.125
  end
  8.times do
    notes = (ring :bb1, :bb2, :bb3).tick
    play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
    sleep 0.125
  end
  8.times do
    notes = (ring :f1, :f2, :f3).tick
    play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
    sleep 0.125
  end
  8.times do
    notes = (ring :gs1, :gs2, :gs3).tick
    play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
    sleep 0.125
  end
  16.times do
    notes = (ring :b1, :b2, :b3).tick
    play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
    sleep 0.125
  end
  16.times do
    notes = (ring :d1, :d2, :d3).tick
    play notes, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: choose([0, 1, 2]), amp: rrand(0.3, 0.6)
    sleep 0.125
  end
end

use_synth :tb303
sweet_adeline_intro
sweet_adeline_verse_chords
sweet_adeline_intro
sweet_adeline_verse_chords
sweet_adeline_intro
sweet_adeline_chorus_chords
sweet_adeline_intro
sweet_adeline_verse_chords