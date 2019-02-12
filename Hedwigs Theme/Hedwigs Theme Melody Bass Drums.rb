bpm=160                    #beats per minute
bar_length=(60.0/bpm)*4.0  #the length of a 4/4 bar in seconds

sb=bar_length      #semibrieve - whole note
mi=bar_length/2.0  #minim - half note
cr=bar_length/4.0  #crochet - quarter note
qu=bar_length/8.0  #quaver - eighth note
sq=bar_length/16.0 #semiquaver - sixteenth note
crd=cr + qu        #dotted crochet - crochet plus a quaver
mid=mi + cr        #dotted minim - minim plus a crochet

use_synth :piano
use_synth_defaults amp: 1
play_pattern_timed [:r, :r, :e], [cr, cr, cr]

live_loop :loop_drums do
  sleep cr
  sample :drum_cymbal_closed, amp: 0.8
  sleep cr
  sample :drum_cymbal_closed, amp: 0.8
  sleep cr
end

live_loop :loop_bass do
  use_synth :pulse
  use_synth_defaults amp: 0.2
  
  play_pattern_timed [:a2, :a2, :d2, :b2, :a2, :g2, :e2, :e2], [mid, mid, mid, mid, mid, mid, mid, mid]
  play_pattern_timed [:a2, :a2, :g2, :f2, :f2, :ds2, :a2, :a2], [mid, mid, mid, mid, mid, mid, mid, mid]
  
end


live_loop :loop_melody do
  use_synth :piano
  use_synth_defaults amp: 1
  
  with_fx :reverb, room: 0.9 do
    play_pattern_timed [:a, :c5, :b,   :a, :e5,   :d5,   :b], [crd, qu, cr, mi, cr, mid, mid]
    play_pattern_timed [:a, :c5, :b,  :g, :bb,   :e,   :e, :e], [crd, qu, cr, mi, cr, mid, mi, cr]
    play_pattern_timed [:a, :c5, :b,  :a, :e5,   :g5, :fs5,   :f5, :cs5], [crd, qu, cr, mi, cr, mi, cr, mi, cr]
    play_pattern_timed [:f5, :e5, :ds5,  :ds, :c5,   :a,    :a, :e], [crd, qu, cr, mi, cr, mid, mi, cr]
    
  end
end