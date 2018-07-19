/*Author : Hakan C. ?pek
25.06.2018
Program that prints equilateral quadrangle in a file. Mathematics used in if loops.
*/
@/Users/7282/Desktop/PALETTE.pkb;
@/Users/7282/Desktop/PALETTE.pks;
/
ACCEPT userInput NUMBER PROMPT 'Enter size of Pyramid : ';
    
DECLARE
    pointer_userInput NUMBER;
BEGIN
    pointer_userInput := &userInput;
    HR.PALETTE.DRAWPYRAMID(pointer_userInput);
END;
/