/// scr_checkmorse(inputmorse)
var inputmorse = argument0;

// Check if inputmorse is a valid letter
switch ( inputmorse ) {
    case '.-':
        letter = 'a';
        break;
    case '-...':
        letter = 'b';
        break;    
    case '-.-.':
        letter = 'c';
        break;    
    case '-..':
        letter = 'd';
        break;
    case '.':
        letter = 'e';
        break;
    case '..-.':
        letter = 'f';
        break;
    case '--.':
        letter = 'g';
        break;
    case '....':
        letter = 'h';
        break;
    case '..':
        letter = 'i';
        break;
    case '.---':
        letter = 'j';
        break;
    case '-.-':
        letter = 'k';
        break;
    case '.-..':
        letter = 'l';
        break;
    case '--':
        letter = 'm';
        break;
    case '-.':
        letter = 'n';
        break;
    case '---':
        letter = 'o';
        break;
    case '.--.':
        letter = 'p';
        break;
    case '--.-':
        letter = 'q';
        break;
    case '.-.':
        letter = 'r';
        break;
    case '...':
        letter = 's';
        break;
    case '-':
        letter = 't';
        break;
    case '..-':
        letter = 'u';
        break;
    case '...-':
        letter = 'v';
        break;
    case '.--':
        letter = 'w';
        break;
    case '-..-':
        letter = 'x';
        break;
    case '-.--':
        letter = 'y';
        break;
    case '--..':
        letter = 'z';
        break;  
    default:
        letter = '';
}
                       
return letter;
