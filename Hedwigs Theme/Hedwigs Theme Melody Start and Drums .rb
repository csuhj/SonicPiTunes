bpm=160                    #beats per minute
bar_length=(60.0/bpm)*4.0  #the length of a 4/4 bar in seconds

sb=bar_length      #semibrieve - whole note
mi=bar_length/2.0  #minim - half note
cr=bar_length/4.0  #crochet - quarter note
qu=bar_length/8.0  #quaver - eighth note
sq=bar_length/16.0 #semiquaver - sixteenth note
crd=cr + qu        #dotted crochet - crochet plus a quaver
mid=mi + cr        #dotted minim - minim plus a crochet

define :play_note do |tone, time|
  play tone
  sleep time
end

define :play_notes do |list|
  i = 0
  while (i < list.length)
    play_note list[i][0], list[i][1]
    i += 1
  end
end

live_loop :loop_drums do
  sleep cr
  sample :drum_cymbal_closed, amp: 0.8
  sleep cr
  sample :drum_cymbal_closed, amp: 0.8
  sleep cr
end

live_loop :loop_melody do
  use_synth :piano
  use_synth_defaults amp: 1
  
  with_fx :reverb, room: 0.9 do
    play_notes [[:r, mi], [:e, cr]]
    
    play_notes [[:a, crd], [:c5, qu], [:b, cr]]
    play_notes [[:a, mi], [:e5, cr]]
    play_notes [[:d5, mid]]
    play_notes [[:b, mid]]
    
    play_notes [[:a, crd], [:c5, qu], [:b, cr]]
    play_notes [[:g, mi], [:bb, cr]]
    play_notes [[:e, mid]]
    play_notes [[:e, mi], [:e, cr]]
    
  end
end

