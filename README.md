# House of the Dockers  
A Bash + Docker automation project for processing text files across multiple containers.  
Created as part of a scripting and automation module to practice container management, file handling, and workflow automation.


## Features
- Start and manage multiple Docker containers.
- Copy files from host to containers automatically.
- Sort text files by character length and extract meaningful content.
- Generate a **final compiled text chapter** from multiple sources.
- Interactive menu for viewing, appending, or removing text from the final output.


## Skills Demonstrated
- **Bash scripting**: automation, loops, and user input.
- **Docker**: container management and file operations.
- **Text processing**: using `awk`, `sed`, and `wc` for data extraction.
- **Automation pipelines**: combining multiple scripts into a repeatable workflow.


## How to Run

1. Clone the repository

git clone https://github.com/YOUR-USERNAME/house-of-the-dockers.git
cd house-of-the-dockers

2. Make the scripts executable

chmod +x step1.sh step2.sh user_menu.sh

3. Run the setup
Start containers and load files:

./step1.sh

4. Process and generate the final chapter

./step2.sh

5. Open the interactive menu

./user_menu.sh

## Project Structure


house-of-the-dockers/
├── step1.sh                # Create containers and copy files
├── step2.sh                # Process files and generate the final chapter
├── user_menu.sh            # Interactive menu for editing/viewing the book
├── sorted_docker1.txt      # Sample sorted text data
├── sorted_docker2.txt      # Sample sorted text data
├── sorted_docker3.txt      # Sample sorted text data
├── FINAL_CHAPTER.txt       # Output final chapter
├── README.md               # Documentation
└── LICENSE                 # License file


## License
This project is public for demonstration and educational purposes.
All rights reserved © 2025 Jose Bordon.
