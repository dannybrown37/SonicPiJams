define :fourdrop do
  sample :drum_bass_hard
  sleep 1
  3.times do
    sample :drum_bass_soft
    sleep 1
  end
end

define :cymbal16 do
  7.times do
    sample :drum_cymbal_closed
    sleep 0.25
  end
  sample :drum_cymbal_open, sustain: 0.25
  sleep 0.25
end

define :snare do
  sleep 1.50
  sample :drum_snare_soft
  sleep 0.50
end

in_thread do
  loop do
    fourdrop
  end
end

in_thread do
  loop do
    cymbal16
  end
end

loop do
  snare
end
