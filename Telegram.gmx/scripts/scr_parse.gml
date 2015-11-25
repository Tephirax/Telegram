/// scr_checkmorse(inputtext)
var inputtext = argument0;

// Check whether submitted sentence contains keywords
// (string_pos will return 0 if string not found)
// Who are you? / What's your name?
if ( (string_pos('who ', inputtext) != 0) 
  || (string_pos('what', inputtext) != 0 && string_pos('name ', inputtext) != 0)) {
    show_debug_message('Text recognised: "who" or "what...name"');
    global.outputtext = 'sam';
    global.outputdelay = 60;
    show_debug_message(global.outputtext);
}
// What happened to you?
else if ( string_pos('what ', inputtext) != 0 && string_pos('happened ', inputtext) != 0 ) {
    show_debug_message('Text recognised: "what...happened"');
    global.outputtext = 'i think a bomb fell. its dark.';
    global.outputdelay = 60;
    show_debug_message(global.outputtext);
}
// Where are you?
else if ( string_pos('where ', inputtext) != 0 && string_pos('you ', inputtext) != 0 ) {
    show_debug_message('Text recognised: "where...you"');
    global.outputtext = 'the telegraph office. what day is it.';
    global.outputdelay = 60;
    show_debug_message(global.outputtext);
}   
