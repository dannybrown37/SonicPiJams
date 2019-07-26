chat = :drum_cymbal_closed
ohat = :drum_cymbal_open
hat_pedal = :drum_cymbal_pedal

define :hat_pattern_quarter do
  4.times do
    sample chat
    sleep 1
  end
end

define :hat_pattern_eighth do
  8.times do
    sample chat
    sleep 0.5
  end
end

define :hat_pattern_sixteenth do
  16.times do
    sample chat, cutoff: rrand(100,130)
    sleep 0.25
  end
end

define :hat_pattern_2 do
  # 17 in book, goes with kick_2
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

define :hat_pattern_3 do
  # 18 in book, goes with kick_3
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

define :hat_pattern_4 do
  6.times do
    sample chat
    sleep 0.5
    sample ohat, finish: 0.2
    sleep 0.5
  end
  2.times do
    sample chat
    sleep 0.5
  end
  sample ohat, finish: 0.2
  sleep 0.5
  sample chat
  sleep 0.5
end

define :hat_pattern_5 do
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

define :hat_pattern_6 do
  7.times do
    sample chat
    sleep 0.5
  end
  2.times do
    sample ohat, finish: 0.25
    sleep 0.5
  end
  2.times do
    sample chat
    sleep 0.5
  end
  sample ohat, finish: 0.25
  sleep 0.5
  3.times do
    sample chat
    sleep 0.5
  end
  sample ohat, finish: 0.25
  sleep 0.5
end

define :hat_pattern_7 do
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

define :hat_pattern_8 do
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

define :hat_pattern_10 do
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

define :hat_pattern_11 do
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


define :hat_pattern_12 do
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

define :hat_pattern_13 do
  7.times do
    sample ohat, finish: 0.2
    sleep 1
  end
  sample ohat, finish: 0.25
  sleep 1
end

define :hat_pattern_14 do
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



################################

use_bpm 69

live_loop :hat do
  hat_pattern_11
end

live_loop :kick do
  kick_11 :bd_haus
end

live_loop :snare do
  snare_offbeat :sn_generic
end
