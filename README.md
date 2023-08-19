# PublicChatExtractor

PowerShell script to filter out private messages from virtual meeting chat logs. Given an input `meeting_saved_chat.txt`, it produces a `meeting_filtered_chat.txt` with only public messages.

## Requirements

- Windows PowerShell (tested with v5.1, but should work with other versions too)
- Input file named `meeting_saved_chat.txt` in the same directory as the script

## How to Run

1. **Clone the Repository**:
    ```bash
    git clone https://github.com/irnutsmurt/Zoom-Chat-After-Chat-Filter.git
    cd Zoom-Chat-After-Chat-Filter
    ```

2. **Prepare Your Chat Log**: Place your chat log named `meeting_saved_chat.txt` in the repository directory.

3. **Execute the Script**: Right-click the script and choose 'Run with PowerShell'. Alternatively, you can open a PowerShell terminal in the directory and run:
    ```powershell
    .\YourScriptName.ps1
    ```

4. **Check the Results**: Once the script has finished running, you'll find a file named `meeting_filtered_chat.txt` in the same directory. This file contains your chat log without private messages.

## Contributions

Feel free to fork the repository and submit pull requests for improvements or additional features.

## License

This project is licensed under the [GNU General Public License v3.0](LICENSE).

## Issues & Support

For any issues or support, please open an issue on this GitHub repository.
