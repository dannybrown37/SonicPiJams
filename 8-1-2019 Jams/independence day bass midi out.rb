live_loop :id_bass do
  use_synth :tb303
  notes = (ring, :b1, :bb1, :b1, :g1, :bb1, :a1, :fs1, :g1).tick
  midi notes, amp: 0.2, cutoff: rrand(70, 130), port: "system-8"
  sleep 1.75
  midi notes, amp: 0.2, release: 0.125, sustain: 0.125, cutoff: rrand(70, 130), port: "system-8"
  sleep 0.25
end