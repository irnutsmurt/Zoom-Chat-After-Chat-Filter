# PublicChatExtractor

PowerShell script to filter out private messages from virtual meeting chat logs. Given an input `meeting_saved_chat.txt`, it produces a `meeting_filtered_chat.txt` with only public messages.

## Requirements

- Windows PowerShell (tested with v5.1, but should work with other versions too)
- Input file named `meeting_saved_chat.txt` in the same directory as the script

## Execution Policy Note for Windows 10/11 Home Users

By default, Windows 10 and 11 Home editions have PowerShell scripts execution disabled. To temporarily enable script execution, follow these steps:

1. Open a PowerShell window with administrative privileges and run:
    ```powershell
    Set-ExecutionPolicy RemoteSigned
    ```

    Please note that this command allows unsigned scripts from trusted publishers downloaded from the internet to be run.

2. After running the script, for best security practices, revert the changes by running:
    ```powershell
    Set-ExecutionPolicy Restricted
    ```

    This will disable the execution of unsigned scripts again, ensuring your system remains secure.
   
## How to Run

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/irnutsmurt/Zoom-Chat-After-Chat-Filter.git
    cd Zoom-Chat-After-Chat-Filter
    ```

2. **Prepare Your Chat Log**: Place your chat log named `meeting_saved_chat.txt` in the repository directory.

3. **Execute the Script**: Right-click the script and choose 'Run with PowerShell'. Alternatively, you can open a PowerShell terminal in the directory and run:
    ```powershell
    .\Filter_Out_Private_Messages.ps1
    ```

4. **Check the Results**: Once the script has finished running, you'll find a file named `meeting_saved_chat_MM_DD_YYYY.txt` (where MM_DD_YYYY represents the current date) in the same directory. This file contains your chat log without private messages.

## Contributions

Feel free to fork the repository and submit pull requests for improvements or additional features.

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).

## Issues & Support

For any issues or support, please open an issue on this GitHub repository.
