define :bass_line do |note, time|
  sustain_time = time * 0.9
  midi note, sustain: sustain_time, port: ["system-8"]
  sleep time
end

define :midi_chord do |notes, repeats|
  repeats.times do
    notes.each do |note|
      midi note, sustain: 0.2, port: ["system-8"]
    end
    sleep 0.25
  end
  
end

use_bpm 120

live_loop :everybody_cares_chords do
  2.times do
    midi_chord chord(:e3,:minor), 32
    midi_chord chord(:g3,:major), 32
    2.times do
      midi_chord chord(:f3, :major), 8
      midi_chord chord(:c3, :major), 8
      midi_chord chord(:b2, :m7), 16
    end
  end
  midi_chord chord(:f3, :major), 8
  midi_chord chord(:c3, :major), 8
  midi_chord chord(:b2, :m7), 32
  # chorus
  2.times do
    midi_chord chord(:g3, :major), 16
    midi_chord chord(:f3, :major), 8
    midi_chord chord(:c3, :major), 8
    midi_chord chord(:e3, :minor), 16
    midi_chord chord(:b2, :m7), 16
  end
end


live_loop :everybody_cares_bass_line do
  2.times do
    bass_line :e1, 4
    bass_line :cs2, 2
    bass_line :c2, 2
    bass_line :g2, 4
    bass_line :fs2, 4
    2.times do
      bass_line :f2, 2
      bass_line :c2, 2
      bass_line :b1, 4
    end
  end
  bass_line :f2, 2
  bass_line :c2, 2
  bass_line :b1, 2
  bass_line :a1, 2
  bass_line :g1, 2
  bass_line :fs1, 2
  # chorus
  2.times do
    bass_line :g1, 4
    bass_line :f1, 2
    bass_line :c2, 2
    bass_line :e1, 1
    bass_line :fs1, 1
    bass_line :g1, 1
    bass_line :a1, 1
    bass_line :b1, 4
  end
  
end


