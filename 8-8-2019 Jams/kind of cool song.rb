define :bass_line do |note, time|
  release_time = time * 0.9
  play note, release: release_time, cutoff: rrand(70, 130), amp: 0.169
  sleep time
end

define :chord_player do |root, type, repeats|
  repeats.times do
    play chord(root, type), release: 0.2, cutoff: rrand(70, 130), res: rrand(0.5, 0.99)
    sleep 0.25
  end
end

live_loop :bass do
  use_synth :dsaw
  notes = (ring :e1, :e1, :c2, :b2).tick
  16.times do
    bass_line notes, 0.25
  end
end

live_loop :bass_2 do
  sync :bass
  use_synth :prophet
  notes = (ring :e2, :e2, :c2, :b1).tick
  bass_line notes, 4
end

live_loop :guitar_ambience do
  sync :bass
  with_fx :echo do
    sleep 8
    sample :guit_em9, amp: 0.69
    sleep 8
  end
end

live_loop :ambience_1 do
  sync :bass
  sleep 16
  sample :ambi_lunar_land
  sleep 16
end

live_loop :glitch do
  sync :bass
  with_fx :echo do
    with_fx :level, amp: 0.69 do
      sleep choose([4, 8])
      glitches = [:glitch_perc1, :glitch_perc2, :glitch_perc3, :glitch_perc4, :glitch_perc5]
      sample choose(glitches)
      sleep choose([8, 12])
    end
  end
end

live_loop :percussion do
  sync :bass
  with_fx :level, amp: 0.369 do
    with_fx :echo do
      with_fx :panslicer do
        sample :mehackit_phone2
        sleep 1
        sample :mehackit_phone3
        sleep 1
      end
    end
  end
end

#"""
with_fx :panslicer, wave: 2 do
  sync :bass
  with_fx :level, amp: 0.269 do
    with_fx :reverb, room: 0.4, mix: 0.4 do
      live_loop :drums do
        use_bpm 120
        in_thread do
          hat_4
        end
        in_thread do
          kick_4 :bd_haus
        end
        snare_offbeat :sn_generic
      end
    end
  end
end
#"""