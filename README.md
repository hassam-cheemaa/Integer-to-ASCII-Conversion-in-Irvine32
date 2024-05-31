# Integer to ASCII Conversion

## Overview

This project demonstrates an assembly language program designed to run on x86 architecture using the Irvine32 library. The program provides a menu-driven interface that allows users to convert an integer between 33 and 127 to its corresponding ASCII character or exit the program. This project showcases key assembly language programming techniques, including input handling, conditional branching, and string manipulation, making use of the Irvine32 library to simplify many complex tasks.

## Objectives

The objectives of this project are to:
- Display a well-formatted title screen.
- Present a menu with options for converting an integer to ASCII and exiting the program.
- Accurately read and interpret user input.
- Execute the corresponding functionality based on the user's choice.
- Provide clear feedback for invalid selections and out-of-range inputs.

## Library Use

### Irvine32 Library
The Irvine32 library, developed by Kip Irvine, is utilized for:
- Input and Output Operations: Functions like `ReadInt`, `WriteString`, and `WriteChar`.
- String Manipulation: Functions for handling textual data.
- Mathematical and Logical Operations: Support for arithmetic and logical evaluations.
- Memory Management: Macros for allocating and deallocating memory.
- Utility Functions: Handling system interruptions, manipulating cursor positions, and managing special characters.

## Project Code

The program is written in assembly language and makes use of the Irvine32 library for its operations. The following is a brief overview of the code structure:

### Data Section
Defines various strings and messages used in the program:
- Title screen strings
- Menu options
- Prompts and feedback messages

### Code Section
Contains the main procedures of the program:
- `main`: Entry point of the program.
- `printtitle`: Displays the title screen.
- `displayMenu`: Shows the menu options.
- `getUserChoice`: Reads the user's menu choice.
- `invalidChoice`: Handles invalid menu selections.
- `asciiconv`: Converts an integer to its ASCII character if within the valid range.

### Procedures
- `printtitle`: Displays the program title.
- `displayMenu`: Presents the menu options to the user.
- `getUserChoice`: Reads the user's input for menu selection.
- `invalidChoice`: Displays a message for invalid menu selections.
- `asciiconv`: Prompts for an integer, converts it to an ASCII character if valid, or displays an error message.

### Output/Result

The program produces the following outputs:
1. Title screen display.
2. Integer to ASCII conversion results.
3. Feedback for invalid choices.
4. Program exit message.

### Authors

Hassam Cheema
Aadil Masaud
Fabiha Mazhar

### Conclusion

The project successfully demonstrates the creation of an interactive assembly language program using the Irvine32 library and Visual Studio 2022. It highlights the utility of assembly language in managing system resources and hardware efficiently. Through this project, essential assembly programming techniques have been effectively applied, resulting in a user-friendly interface for integer to ASCII conversion.

## How to Run

1. **Prerequisites**:
   - Visual Studio 2022 or later.
   - Irvine32 library installed and configured.

2. **Setup**:
   - Clone the repository to your local machine.
   - Open the project in Visual Studio.

3. **Build and Run**:
   - Build the project in Visual Studio.
   - Run the executable to start the program.

4. **Usage**:
   - Follow the on-screen instructions to convert an integer to its ASCII equivalent or to exit the program.

## License

This project is licensed under the MIT License. See the `LICENSE` file for details.
