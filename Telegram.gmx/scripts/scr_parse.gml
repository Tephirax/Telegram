/// scr_checkmorse(inputtext)
var inputtext = argument0;

// Check whether submitted sentence contains keywords
// (string_pos will return 0 if string not found)
// Who are you? / What's your name?
if ( (string_pos('who ', inputtext) != 0) 
  || (string_pos('what', inputtext) != 0 && string_pos('name ', inputtext) != 0)) {
    show_debug_message('Text recognised: "who" or "what...name"');
    global.ghosttext = 'Joe. Joe Smith.';
    show_debug_message(global.ghosttext);
}
// What happened to you?
else if ( string_pos('what ', inputtext) != 0 && string_pos('happened ', inputtext) != 0 ) {
    show_debug_message('Text recognised: "what...happened"');
    global.ghosttext = 'A bomb. I think a bomb fell. Its dark.';
    show_debug_message(global.ghosttext);
}
// Where are you?
else if ( string_pos('where ', inputtext) != 0 && string_pos('you ', inputtext) != 0 ) {
    show_debug_message('Text recognised: who');
    global.ghosttext = 'Joe. Joe Smith.';
    show_debug_message(global.ghosttext);
}   
