live_loop :beats do
  sample :bd_mehackit
  sample :bd_pure
  sleep 0.5
  sample :glitch_bass_g
  sample :sn_generic, cutoff: rrand(70, 100)
  sleep 0.5
end

live_loop :hat do
  sample :drum_cymbal_closed, amp: rrand(0.7, 1), cutoff: rrand(90, 130), res: rrand(0.5, 0.95)
  sleep 0.125
end

live_loop :acid_bass do
  use_synth :tb303
  3.times do
    16.times do
      ee = (ring :e1, :e2, :e3).tick
      play ee, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: 0, amp: rrand(0.3, 0.6)
      sleep 0.125
    end
    16.times do
      dd = (ring :d1, :d2, :d3).tick
      play dd, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: 0, amp: rrand(0.3, 0.6)
      sleep 0.125
    end
  end
  2.times do
    16.times do
      cc = (ring :c1, :c2, :c3).tick
      play cc, release: 0.125, cutoff: rrand(50, 130), res: rrand(0.5, 0.95), wave: 0, amp: rrand(0.3, 0.6)
      sleep 0.125
    end
  end
end

live_loop :riff do
  use_synth :prophet
  riff = (ring :e3, :e3, :r, :g3, :r, :r, :r, :a3)
  play riff.tick, release: 0.5, cutoff: rrand(80, 130), res: rrand(0.3, 0.99)
  sleep 0.25
end
