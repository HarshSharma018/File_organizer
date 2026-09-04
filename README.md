# # Bash File Organizer

A simple shell script that scans a directory and automatically sorts files into subfolders based on their file extension (Images, Documents, Videos, Audio, Archives, Scripts, Others).

## Features

- Sorts files by extension into categorized folders
- Works on any directory — defaults to current directory if none specified
- Handles files with no extension gracefully
- Creates destination folders automatically
- Prints a log of every move as it happens

## Requirements

- Bash (Linux/macOS, or WSL on Windows)
- Standard coreutils (`mv`, `mkdir`) — no external dependencies

## Usage

```bash
chmod +x organize.sh
./organize.sh /path/to/directory
```

If no path is given, it organizes the current directory:

```bash
./organize.sh
```

## Example

Before:

Downloads/
├── resume.pdf
├── vacation.jpg
├── song.mp3
├── project.zip
└── script.sh

After running `./organize.sh Downloads`:

Downloads/
├── Documents/
│ └── resume.pdf
├── Images/
│ └── vacation.jpg
├── Audio/
│ └── song.mp3
├── Archives/
│ └── project.zip
└── Scripts/
└── script.sh# File_organizer
