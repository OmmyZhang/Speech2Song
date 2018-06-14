% Speak the text; 
tts('ÖĞÎÄ'); 
% List availble voices; 
tts('I can speak.','List'); 
% Do not speak out, store the speech in a variable; 
w = tts('I can speak.',[],-4,44100); 
audiowrite('test.wav',w,44100);