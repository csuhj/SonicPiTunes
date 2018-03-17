bpm=120                    #beats per minute
bar_length=(60.0/bpm)*4.0  #the length of a 4/4 bar in seconds

sb=bar_length      #semibrieve - whole note
mi=bar_length/2.0  #minim - half note
cr=bar_length/4.0  #crochet - quarter note
qu=bar_length/8.0  #quaver - eighth note
sq=bar_length/16.0 #semiquaver - sixteenth note
crd=cr + qu        #dotted crochet - crochet plus a quaver
mid=mi + cr        #dotted minim - minim plus a crochet

live_loop :loop_bass do
  use_synth :pluck
  use_synth_defaults amp: 0.8
  
  2. times do
    play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
    play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
    play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
    play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
    
    play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
    play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
    play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
    play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
  end
  
  play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
  play_pattern_timed [:g3, :g3, :g3, :g3, :f3, :f3, :f3, :f3], [qu, qu, qu, qu, qu, qu, qu, qu]
  play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
  play_pattern_timed [:g3, :g3, :g3, :g3, :f3, :f3, :f3, :f3], [qu, qu, qu, qu, qu, qu, qu, qu]
  
  play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
  play_pattern_timed [:g3, :g3, :g3, :g3, :f3, :f3, :f3, :f3], [qu, qu, qu, qu, qu, qu, qu, qu]
  play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
  play_pattern_timed [:c3, :c3, :c3, :c3, :c3, :c3, :c3, :c3], [qu, qu, qu, qu, qu, qu, qu, qu]
end

live_loop :loop_melody do
  use_synth :piano
  use_synth_defaults amp: 1
  
  with_fx :reverb, room: 0.9 do
    2. times do
      play_pattern_timed [:r, :c, :f, :r, :g, :r, :a, :r, :g, :r, :e, :r, :r, :r], [cr, cr, qu, sq, sq, sq, qu, sq, cr, cr, cr, cr, qu, qu]
      play_pattern_timed [:c, :f, :r, :g, :r, :a, :r, :g, :r], [cr, qu, sq, sq, sq, qu, sq, mi, mi]
      play_pattern_timed [:r, :c, :f, :r, :g, :r, :a, :r, :g, :r, :e, :r, :r, :r], [cr, cr, qu, sq, sq, sq, qu, sq, cr, cr, cr, cr, qu, qu]
      play_pattern_timed [:e, :f, :r, :e, :r, :c, :c, :r], [cr, qu, sq, sq, qu, qu, mi, mi]
    end
    
    play_pattern_timed [:r, :c5, :b, :r, :a, :r, :g, :b, :g, :r, :a, :f], [cr, cr, qu, sq, qu, sq, qu, crd, sq, sq, crd, qu]
    play_pattern_timed [:g, :c5, :b, :r, :a, :r, :g, :r, :b, :r, :r], [cr, cr, qu, sq, qu, sq, qu, sq, crd, mi, sq]
    play_pattern_timed [:r, :c5, :b, :r, :a, :r, :g, :b, :g, :r, :a, :f], [cr, cr, qu, sq, qu, sq, qu, crd, sq, sq, crd, qu]
    play_pattern_timed [:g, :e, :f, :r, :e, :r, :c, :c, :r, :r, :r], [cr, cr, qu, sq, qu, sq, qu, sq, sq, crd, mi, cr]
  end
end

