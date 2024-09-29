# CONEXIÓN CON MIDIDesigner

live_loop :midi_sonido do
  
  use_real_time # Para tomar el sonido en tiempo real. 
  note, velocity = sync "/midi:ipad:1/*" # Sincronización con el dispositivo. 
  synth :pluck, note: note, amp: velocity / 127.0 
  
end