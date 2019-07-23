live_loop :intro do
  sweet_adeline_intro
end

live_loop :beats do
  with_fx :reverb do
    sample :bd_haus
    sleep 0.5
  end
  sample :sn_dolf, cutoff: 89
  sleep 0.25
  sample :sn_dolf, cutoff: 79
  sleep 0.25
end

live_loop :hat do
  sample :drum_cymbal_closed, cutoff: rrand(70, 130), res: rrand(0.5, 0.99)
  sleep 0.125
end