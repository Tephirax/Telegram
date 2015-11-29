/// scr_checkmorse(inputtext)
var inputtext = argument0;

// Check whether submitted sentence contains keywords
// (string_pos will return 0 if string not found)
// Repeat previous message
if ( (string_pos('repeat', inputtext) != 0)) {
    show_debug_message('Text recognised: "repeat"');
    global.outputdelay = 60; // Frames until message display begins
    show_debug_message(global.outputtext);    
}
// Hello/Hi
else if ( (string_pos('hello', inputtext) != 0) 
  || (string_pos('hi ', inputtext) != 0)) {
    show_debug_message('Text recognised: "hello" or "hi"');
    global.outputtext = 'thank god';
    global.outputdelay = 60;
    show_debug_message(global.outputtext);

    // Remove from ds_list
    var listpos = ds_list_find_index(global.questionlist, 'hello');
    ds_list_delete(global.questionlist, listpos);
    global.listsize = ds_list_size(global.questionlist);  
}
// Who are you? / What's your name?
else if ( (string_pos('who ', inputtext) != 0) 
  || (string_pos('what', inputtext) != 0 && string_pos('name ', inputtext) != 0)) {
    show_debug_message('Text recognised: "who" or "what...name"');
    global.outputtext = 'sam';
    global.outputdelay = 60;
    show_debug_message(global.outputtext);
    
    // Remove from ds_list
    var listpos = ds_list_find_index(global.questionlist, 'who are you');
    ds_list_delete(global.questionlist, listpos);
    global.listsize = ds_list_size(global.questionlist);
}
// What happened to you?
else if ( string_pos('what ', inputtext) != 0 && string_pos('happened ', inputtext) != 0 ) {
    show_debug_message('Text recognised: "what...happened"');
    global.outputtext = 'a bomb fell. i blacked out';
    global.outputdelay = 60;
    show_debug_message(global.outputtext);
    
    // Remove from ds_list
    var listpos = ds_list_find_index(global.questionlist, 'what happened');
    ds_list_delete(global.questionlist, listpos);
    global.listsize = ds_list_size(global.questionlist);
}
// Where are you?
else if ( string_pos('where ', inputtext) != 0 && string_pos('you ', inputtext) != 0 ) {
    show_debug_message('Text recognised: "where...you"');
    global.outputtext = 'the telegraph office. what day is it';
    global.outputdelay = 60;
    show_debug_message(global.outputtext);
    
    // Remove from ds_list
    var listpos = ds_list_find_index(global.questionlist, 'where are you');
    ds_list_delete(global.questionlist, listpos);
    global.listsize = ds_list_size(global.questionlist);
}
// 2015
else if ( string_pos('2015', inputtext) != 0 || string_pos('2016', inputtext) != 0 ) {
    show_debug_message('Text recognised: "2015" or "2016"');
    global.outputtext = 'i dont understand. its 1915';
    global.outputdelay = 60;
    show_debug_message(global.outputtext);
} 

