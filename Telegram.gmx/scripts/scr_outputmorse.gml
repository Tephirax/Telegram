///scr_outputmorse(outputtext)
// Convert text string to morse code
outputtext = argument0;

// Reset global.outputmorse
global.outputmorse = '';

// Iterate through each letter of the outputtext string
var strlen = string_length(outputtext);
for ( i = 1; i <= strlen; i++ ) {
    // Get letter at position i
    var outputletter = string_char_at(outputtext, i);
    var letter = '';
    // Check if inputmorse is a valid letter
    switch ( outputletter ) {
        case 'a':
            letter = '.-';
            break;
        case 'b':
            letter = '-...';
            break;    
        case 'c':
            letter = '-.-.';
            break;    
        case 'd':
            letter = '-..';
            break;
        case 'e':
            letter = '.';
            break;
        case 'f':
            letter = '..-.';
            break;
        case 'g':
            letter = '--.';
            break;
        case 'h':
            letter = '....';
            break;
        case 'i':
            letter = '..';
            break;
        case 'j':
            letter = '.---';
            break;
        case 'k':
            letter = '-.-';
            break;
        case 'l':
            letter = '.-..';
            break;
        case 'm':
            letter = '--';
            break;
        case 'n':
            letter = '-.';
            break;
        case 'o':
            letter = '---';
            break;
        case 'p':
            letter = '.--.';
            break;
        case 'q':
            letter = '--.-';
            break;
        case 'r':
            letter = '.-.';
            break;
        case 's':
            letter = '...';
            break;
        case 't':
            letter = '-';
            break;
        case 'u':
            letter = '..-';
            break;
        case 'v':
            letter = '...-';
            break;
        case 'w':
            letter = '.--';
            break;
        case 'x':
            letter = '-..-';
            break;
        case 'y':
            letter = '-.--';
            break;
        case 'z':
            letter = '--..';
            break;
        case '.':
            letter = ' ';
            break;        
    }
    global.outputmorse = global.outputmorse + ' ' + letter;
}
show_debug_message(global.outputtext);
show_debug_message(global.outputmorse);

global.playmessage = true;
