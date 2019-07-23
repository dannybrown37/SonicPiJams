define :sweet_adeline_verse_chords do
  use_synth :tb303
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
  use_synth :tb303
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

sweet_adeline_verse_chords
sweet_adeline_chorus_chords