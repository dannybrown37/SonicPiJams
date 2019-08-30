live_loop :tabla do
  with_fx :echo, decay: 0.1 do
    sample :tabla_na
    sleep 0.5
    sample choose([:tabla_ghe1, :tabla_ghe2, :tabla_ghe3])
    sleep 0.75
    sample choose([:tabla_ke1, :tabla_ke2, :tabla_ke3])
    sleep 0.75
  end
  16.times do
    sample choose([:tabla_ghe4, :tabla_ghe5, :tabla_ghe6,
                   :tabla_ghe7, :tabla_ghe8, :tabla_tun3,
                   :tabla_tun1, :tabla_tun2]), finish: 0.1
    sleep 0.125
  end
end
