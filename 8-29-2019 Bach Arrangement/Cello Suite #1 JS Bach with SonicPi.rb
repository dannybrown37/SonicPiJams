use_synth :tb303
use_bpm 120

measure_1 = [:g2, :d3, :b3, :a3, :b3, :d3, :b3, :d3].ring
measure_2 = [:g2, :e3, :c4, :b3, :c4, :e3, :c4, :e3].ring
measure_3 = [:g2, :fs3, :c4, :b3, :c4, :fs3, :c4, :fs3].ring
measure_4a = [:g2, :g3, :b3, :a3, :b3, :g3, :b3, :g3].ring
measure_4b = [:g2, :g3, :b3, :a3, :b3, :g3, :b3, :fs3].ring
measure_5a = [:g2, :e3, :b3, :a3, :b3, :g3, :fs3, :g3].ring
measure_5b = [:e3, :g3, :fs3, :g3, :b2, :d3, :cs3, :b2].ring
measure_6 = [:cs3, :g3, :a3, :g3, :a3, :g3, :a3, :g3].ring
measure_7a = [:fs3, :a3, :d4, :cs4, :d4, :a3, :g3, :a3].ring
measure_7b = [:fs3, :a3, :g3, :a3, :d3, :fs3, :e3, :d3].ring
measure_8 = [:e2, :b2, :g3, :fs3, :g3, :b2, :g3, :b2].ring
measure_9a = [:e2, :cs3, :d3, :e3, :d3, :cs3, :b2, :a2].ring
measure_9b = [:g3, :fs3, :e3, :d4, :cs4, :b3, :a3, :g3].ring
measure_10a = [:fs3, :e3, :d3, :d4, :a3, :d4, :fs3, :a3].ring
measure_10b = [:d3, :e3, :fs3, :a3, :g3, :fs3, :e3, :d3].ring
measure_11a = [:gs3, :d3, :f3, :e3, :f3, :d3, :gs3, :d3].ring
measure_11b = [:b3, :d3, :f3, :e3, :f3, :d3, :gs3, :d3].ring
measure_12a = [:c3, :e3, :a3, :b3, :c4, :a3, :e3, :d3].ring
measure_12b = [:c3, :e3, :a3, :b3, :c4, :a3, :fs3, :e3].ring
measure_13 = [:ds3, :fs3, :ds3, :fs3, :a3, :fs3, :a3, :fs3].ring
measure_14a = [:g3, :fs3, :e3, :g3, :fs3, :g3, :a3, :fs3].ring
measure_14b = [:g3, :fs3, :e3, :d3, :c2, :b2, :a2, :g2].ring
measure_15 = [:fs2, :c3, :d3, :c3, :d3, :c3, :d3, :c3].ring
measure_16 = [:g2, :b2, :f3, :e3, :f4, :b2, :f3, :b2].ring
measure_17 = [:g2, :c3, :e3, :d3, :e3, :c3, :e3, :c3].ring
measure_18 = [:g2, :fs3, :c4, :b3, :c4, :fs3, :c4, :fs3].ring
measure_19a = [:g2, :d3, :b3, :a3, :b3, :g3, :fs3, :e3].ring
measure_19b = [:d3, :c3, :b2, :a2, :g2, :fs2, :e2, :d2].ring
measure_20 = [:cs2, :a2, :e3, :fs3, :g3, :e3, :fs3, :g3].ring
measure_21a = [:c2, :a2, :d3, :e3, :fs3, :d3].ring
measure_21b = [:d4, :a2, :b2, :c3, :d3, :e3, :fs3, :g3].ring

"""

"""
piece = [
  measure_1, measure_1,
  measure_2, measure_2,
  measure_3, measure_3,
  measure_4a, measure_4b,
  measure_5a, measure_5b,
  measure_6, measure_6,
  measure_7a, measure_7b,
  measure_8, measure_8,
  measure_9a, measure_9b,
  measure_10a, measure_10b,
  measure_11a, measure_11b,
  measure_12a, measure_12b,
  measure_13, measure_13,
  measure_14a, measure_14b,
  measure_15, measure_15,
  measure_16, measure_16,
  measure_17, measure_17,
  measure_18, measure_18,
  measure_19a, measure_19b,
  measure_20, measure_20,
  measure_21a, measure_21b,
].ring

sleep_time = 0.25
sus_time = 0.01
pan_time = 0.2
rel_time = 0.26

1.times do
  with_fx :lpf do
    play_pattern_timed piece[0], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[1], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[2], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[3], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[4], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[5], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[6], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[7], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[8], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[9], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[10], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[11], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[12], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[13], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[14], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[15], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[16], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[17], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[18], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[19], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[20], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[21], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[22], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[23], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[24], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[25], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[26], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[27], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[28], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[29], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[30], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[31], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[32], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[33], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[34], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[35], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[36], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[37], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[38], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[39], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
    play_pattern_timed piece[40], [0.33, 0.33, 0.34, 0.33, 0.33, 0.34, 4]
    play_pattern_timed piece[41], sleep_time, sustain: sus_time, pan_slide: pan_time, release: rel_time, cutoff: rrand(60, 130)
  end
end

