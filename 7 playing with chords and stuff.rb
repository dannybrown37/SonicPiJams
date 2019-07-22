use_bpm 120

live_loop :ticks do
  use_synth :prophet
  8.times do
    play (chord :c2, :minor).tick, release: 1
    sleep 0.5
  end
  8.times do
    play (chord :f2, :minor).tick, release: 1
    sleep 0.5
  end
  8.times do
    play (chord :db2, :major).tick, release: 1
    sleep 0.5
  end
  8.times do
    play (chord :g2, :major).tick, release: 1
    sleep 0.5
  end
end

live_loop :chords do
  use_synth :dpulse
  1.times do
    play (chord :c4, :minor), release: 4
    sleep 4
  end
  1.times do
    play (chord :f4, :minor), release: 4
    sleep 4
  end
  1.times do
    play (chord :db4, :major), release: 4
    sleep 4
  end
  1.times do
    play (chord :g4, :major), release: 4
    sleep 4
  end
end

live_loop :hat do
  24.times do
    sample :drum_cymbal_closed, cutoff: rrand(70, 130), res: rrand(0.5, 0.99)
    sleep 0.25
  end
  16.times do
    sample :drum_cymbal_closed, cutoff: rrand(70, 130), res: rrand(0.5, 0.99)
    sleep 0.125
  end
end

live_loop :beatsbydanny do
  sample :bd_klub, amp: 2, cutoff: rrand(100, 130), res: rrand(0.5, 0.99)
  sleep 1
end