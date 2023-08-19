$filePath = "meeting_saved_chat.txt"
# Get the current date and format it
$currentDate = Get-Date -Format "MM_dd_yyyy"
$outputFile = "meeting_saved_chat_$currentDate.txt"


# Regex to match timestamps like 08:05:05
$timestampPattern = "^\d{2}:\d{2}:\d{2}"

$skip = $false

# Read the content line by line, filter it, and then output to a new file
Get-Content $filePath | ForEach-Object {
    if ($_ -match $timestampPattern) {
        # If it's a line starting with a timestamp
        if ($_ -notmatch "\(Privately\):") {
            # And it's not a private message
            $skip = $false
            $_ # Write the line to output
        } else {
            # It's a private message, so start skipping lines
            $skip = $true
        }
    } elseif (!$skip) {
        # If we're not in the middle of skipping private messages
        $_ # Write the line to output
    }
} | Out-File $outputFile
