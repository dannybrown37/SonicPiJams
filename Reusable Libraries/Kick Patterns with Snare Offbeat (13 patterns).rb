use_bpm 120

define :snare_offbeat do
  snare = :sn_generic
  sleep 1
  sample snare
  sleep 2
  sample snare
  sleep 2
  sample snare
  sleep 2
  sample snare
  sleep 1
end

define :kick_1 do |kick|
  4.times do
    sample kick
    sleep 2
  end
end

define :kick_2 do |kick|
  3.times do
    sample kick
    sleep 2
  end
  sample kick
  sleep 0.5
  sample kick
  sleep 0.75
  sample kick
  sleep 0.75
end

define :kick_3 do |kick|
  sample kick
  sleep 2
  sample kick
  sleep 0.5
  2.times do
    sample kick
    sleep 1.5
  end
  sample kick
  sleep 1
  sample kick
  sleep 1.5
end

define :kick_4 do |kick|
  sample kick
  sleep 0.5
  5.times do
    sample kick
    sleep 1
  end
  2.times do
    sleep 0.5
    sample kick
  end
  sleep 0.25
  sample kick
  sleep 1.25
end

define :kick_5 do |kick|
  sample kick
  sleep 0.5
  sample kick
  sleep 1
  sample kick
  sleep 0.5
  3.times do
    sample kick
    sleep 0.75
  end
  sample kick
  sleep 0.5
  sample kick
  sleep 0.75
  2.times do
    sample kick
    sleep 0.5
  end
  sample kick
  sleep 1
  sample kick
  sleep 0.5
end

define :kick_6 do |kick|
  sample kick
  sleep 2
  sample kick
  sleep 1.5
  2.times do
    sample kick
    sleep 0.5
  end
  sample kick
  sleep 0.25
  sample kick
  sleep 0.75
  2.times do
    sample kick
    sleep 0.5
  end
  sample kick
  sleep 1
  sample kick
  sleep 0.5
end

define :kick_7 do |kick|
  sample kick
  sleep 0.5
  sample kick
  sleep 0.25
  sample kick
  sleep 0.75
  sample kick
  sleep 0.5
  2.times do
    sample kick
    sleep 0.75
  end
  sample kick
  sleep 1
  sample kick
  sleep 0.25
  sample kick
  sleep 0.75
  sample kick
  sleep 0.25
  2.times do
    sample kick
    sleep 0.5
  end
  sample kick
  sleep 0.75
  sample kick
  sleep 0.5
end

define :kick_8 do |kick|
  2.times do
    sample kick
    sleep 0.5
    sample kick
    sleep 1.5
  end
  sample kick
  sleep 0.5
  2.times do
    sample kick
    sleep 1
  end
  sample kick
  sleep 1.5
end

define :kick_9 do |kick|
  sample kick
  sleep 2
  sample kick
  sleep 1.5
  2.times do
    sample kick
    sleep 1
  end
  sample kick
  sleep 0.5
  sample kick
  sleep 2
end

define :kick_10 do |kick|
  2.times do
    sample kick
    sleep 2
  end
  sample kick
  sleep 0.5
  2.times do
    sample kick
    sleep 1
  end
  sample kick
  sleep 1.5
end

define :kick_11 do |kick|
  sample kick
  sleep 1.5
  2.times do
    sample kick
    sleep 0.25
  end
  sample kick
  sleep 0.5
  2.times do
    sample kick
    sleep 1
  end
  sample kick
  sleep 0.25
  sample kick
  sleep 0.75
  2.times do
    sample kick
    sleep 0.5
  end
  sample kick
  sleep 1
  sample kick
  sleep 0.5
end

define :kick_12 do |kick|
  sample kick
  sleep 0.5
  3.times do
    sample kick
    sleep 1
  end
  2.times do
    sample kick
    sleep 0.5
  end
  2.times do
    sample kick
    sleep 1
  end
  sample kick
  sleep 1.25
  sample kick
  sleep 0.25
end

define :kick_13 do |kick|
  sample kick
  sleep 1.5
  sample kick
  sleep 1
  sample kick
  sleep 2
  sample kick
  sleep 1.5
  sample kick
  sleep 0.5
  sample kick
  sleep 1.5
end

########################

live_loop :kick do
  kick_11 :bd_haus
end

live_loop :snare do
  snare_offbeat
end

