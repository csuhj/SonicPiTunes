#Imperial March shamelessly and artlessly nabbed from https://www.youtube.com/watch?v=-ajcYc8P3ZM

bpm=120                    #beats per minute
bar_length=(60.0/bpm)*4.0  #the length of a 4/4 bar in seconds

mi=bar_length/2.0  #minim - half note
cr=bar_length/4.0  #crochet - quarter note
qu=bar_length/8.0  #quaver - eighth note
sq=bar_length/16.0 #semiquaver - sixteenth note

live_loop :loop_melody do
  use_synth :piano
  
  play_pattern_timed [:G, :G, :G, :Eb, :r, :Bb, :G, :Eb, :r, :Bb, :G], [cr, cr, cr, qu, sq, sq, cr, qu, sq, sq, mi]
  play_pattern_timed [:D5, :D5, :D5, :Ds5, :r, :As, :Fs, :Eb, :r, :Bb, :G], [cr, cr, cr, qu, sq, sq, cr, qu, sq, sq, mi]
  play_pattern_timed [:G5, :G, :r, :G, :G5, :Fs5, :r], [cr, qu, sq, sq, cr, sq, sq]
  play_pattern_timed [:F5, :E5, :Ds5, :E5, :r, :Gs, :Cs5, :r, :C5, :r], [qu, sq, qu, sq, qu, qu, qu, qu, sq, sq]
  play_pattern_timed [:B, :As, :A, :As, :r, :Ds, :Fs, :r], [sq, qu, qu, sq, qu, qu, qu, qu, sq, qu]
  play_pattern_timed [:Eb, :r, :Bb, :G, :Eb, :r, :Bb, :G], [qu, sq, sq, cr, qu, sq, sq, mi]
end
