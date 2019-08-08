# Welcome to Sonic Pi v3.1

chat = :drum_cymbal_closed
ohat = :drum_cymbal_open
hat_pedal = :drum_cymbal_pedal

define :hat_quarter do
  4.times do
    sample chat
    sleep 1
  end
end

define :hat_eighth do
  8.times do
    sample chat
    sleep 0.5
  end
end

define :hat_sixteenth do
  16.times do
    sample chat, cutoff: rrand(100,130)
    sleep 0.25
  end
end

define :hat_2 do
  # goes with kick_2
  3.times do
    1.times do
      sample ohat, finish: 0.2
      sleep 0.25
    end
    7.times do
      sample chat
      sleep 0.25
    end
  end
  sample ohat, finish: 0.2
  sleep 0.25
  sample chat
  sleep 0.25
  sample ohat, finish: 0.2
  sleep 0.25
  2.times do
    sample chat
    sleep 0.25
  end
  sample ohat, finish: 0.2
  sleep 0.25
  2.times do
    sample chat
    sleep 0.25
  end
end

define :hat_3 do
  # goes with kick_3
  sample ohat, finish: 0.2
  sleep 0.5
  4.times do
    sample chat
    sleep 0.5
  end
  2.times do
    1.times do
      sample ohat, finish: 0.2
      sleep 0.5
    end
    2.times do
      sample chat
      sleep 0.5
    end
  end
  sample ohat, finish: 0.2
  sleep 0.5
  sample chat
  sleep 0.5
  sample ohat, finish: 0.2
  sleep 0.5
  2.times do
    sample chat
    sleep 0.5
  end
end

define :hat_4 do
  open_start = 0.05
  open_finish = 0.1
  6.times do
    sample chat
    sleep 0.5
    sample ohat, start: open_start, finish: open_finish
    sleep 0.5
  end
  2.times do
    sample chat
    sleep 0.5
  end
  sample ohat, start: open_start, finish: open_finish
  sleep 0.5
  sample chat
  sleep 0.5
end

define :hat_5 do
  qtr_open = 0.05
  open = 0.1
  2.times do
    1.times do
      sample ohat, finish: open
      sleep 0.25
    end
    3.times do
      sample ohat, finish: qtr_open
      sleep 0.25
    end
  end
  sample ohat, finish: open
  sleep 0.25
  5.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample ohat, finish: open
  sleep 0.5
  # start second measure
  4.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample ohat, finish: open
  sleep 0.25
  3.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample ohat, finish: open
  sleep 0.25
  sample ohat, finish: qtr_open
  sleep 0.25
  sample ohat, finish: open
  sleep 0.25
  3.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample ohat, finish: open
  sleep 0.25
  sample ohat, finish: qtr_open
  sleep 0.25
end

define :hat_6 do
  ohat_finish = 0.1
  7.times do
    sample chat
    sleep 0.5
  end
  2.times do
    sample ohat, finish: ohat_finish
    sleep 0.5
  end
  2.times do
    sample chat
    sleep 0.5
  end
  sample ohat, finish: ohat_finish
  sleep 0.5
  3.times do
    sample chat
    sleep 0.5
  end
  sample ohat, finish: ohat_finish
  sleep 0.5
end

define :hat_7 do
  qtr_open = 0.05
  open = 0.1
  2.times do
    1.times do
      sample ohat, finish: open
      sleep 0.25
    end
    3.times do
      sample ohat, finish: qtr_open
      sleep 0.5
    end
  end
  sample ohat, finish: open
  sleep 0.25
  5.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample ohat, finish: open
  sleep 0.5
  4.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample ohat, finish: open
  sleep 0.25
  2.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample ohat, finish: open
  sleep 0.5
  sample ohat, finish: open
  sleep 0.75
  sample ohat, finish: open
  sleep 0.25
  3.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
end

define :hat_8 do
  qtr_open = 0.2
  open = 0.3
  7.times do
    sample ohat, finish: qtr_open
    sleep 1
  end
  sample ohat, finish: qtr_open
  sleep 0.5
  sample ohat, finish: open
  sleep 0.5
end

define :hat_pattern_9 do
  open_finish = 0.15
  sample ohat, finish: open_finish
  sleep 0.25
  7.times do
    sample chat
    sleep 0.25
  end
  sample ohat, finish: open_finish
  sleep 0.25
  5.times do
    sample chat
    sleep 0.25
  end
  2.times do
    sample ohat, finish: open_finish
    sleep 0.25
    3.times do
      sample chat
      sleep 0.25
    end
  end
  sample ohat, finish: open_finish
  sleep 0.25
  6.times do
    sample chat
    sleep 0.25
  end
  sample ohat, finish: open_finish
  sleep 0.25
  2.times do
    sample chat
    sleep 0.25
  end
end

define :hat_10 do
  2.times do
    sample ohat, finish: 0.2
    sleep 0.5
    3.times do
      sample chat
      sleep 0.5
    end
  end
  sample ohat, finish: 0.2
  sleep 0.5
  2.times do
    sample chat
    sleep 0.5
  end
  sample ohat, finish: 0.2
  sleep 0.5
  sample chat
  sleep 0.5
  sample ohat, finish: 0.2
  sleep 0.5
  2.times do
    sample chat
    sleep 0.5
  end
end

define :hat_11 do
  open = 0.15
  qtr_open = 0.05
  2.times do
    sample ohat, finish: open
    sleep 0.5
    2.times do
      sample ohat, finish: qtr_open
      sleep 0.25
    end
  end
  2.times do
    sample ohat, finish: qtr_open
    sleep 0.5
  end
  sample ohat, finish: open
  sleep 0.5
  sample ohat, finish: qtr_open
  sleep 0.5
  # start measure 2
  sample ohat, finish: open
  sleep 0.5
  2.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample ohat, finish: open
  sleep 0.5
  3.times do
    sample ohat, finish: qtr_open
    sleep 0.5
  end
  sample ohat, finish: open
  sleep 0.5
  sample ohat, finish: qtr_open
  sleep 0.5
end


define :hat_12 do
  open = 0.2
  qtr_open = 0.069
  6.times do
    sample chat
    sleep 0.5
    sample ohat, finish: open
    sleep 0.5
  end
  sample chat
  sleep 0.5
  2.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample chat
  sleep 0.25
  sample ohat, finish: open
  sleep 0.25
  sample ohat, finish: qtr_open
  sleep 0.25
  sample ohat, finish: open
  sleep 0.25
end

define :hat_13 do
  7.times do
    sample ohat, finish: 0.2
    sleep 1
  end
  sample ohat, finish: 0.25
  sleep 1
end

define :hat_14 do
  # this one goes with kick pattern 5!
  open = 0.2
  qtr_open = 0.05
  2.times do
    sample ohat, finish: open
    sleep 0.25
    3.times do
      sample ohat, finish: qtr_open
      sleep 0.25
    end
  end
  sample ohat, finish: open
  sleep 0.25
  5.times do
    sample ohat, finish: qtr_open
    sleep 0.25
  end
  sample ohat, finish: open
  sleep 0.5
  4.times do
    sample ohat, finish: qtr_open
    sleep 1
  end
end

define :snare_offbeat do |snare_name|
  sleep 1
  sample snare_name
  sleep 2
  sample snare_name
  sleep 2
  sample snare_name
  sleep 2
  sample snare_name
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


################################

use_bpm 60


live_loop :hat do
  hat_6
end

live_loop :kick do
  kick_6 :drum_bass_hard
end

live_loop :snare do
  snare_offbeat :drum_snare_hard
end