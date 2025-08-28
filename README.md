# 🐳 House of the Dockers
A **Bash + Docker automation project** for processing text files across multiple containers.  
Created as part of a scripting and automation module to practice container management, file handling, and workflow automation.

---

## ✨ Features
- Start and manage multiple Docker containers.
- Copy files from host to containers automatically.
- Sort text files by character length and extract meaningful content.
- Generate a final compiled text chapter from multiple sources.
- Interactive menu for viewing, appending, or removing text from the final output.

---

## 🛠 Skills Demonstrated
- **Bash scripting**: automation, loops, and user input.  
- **Docker**: container management and file operations.  
- **Text processing**: using `awk`, `sed`, and `wc` for data extraction.  
- **Automation pipelines**: combining multiple scripts into a repeatable workflow.  

---

## 🚀 How to Run

### 1️⃣ Clone the repository
```bash
git clone https://github.com/YOUR-USERNAME/house-of-the-dockers.git
cd house-of-the-dockers
2️⃣ Make the scripts executable
bash
Copiar código
chmod +x step1.sh step2.sh user_menu.sh
3️⃣ Run the setup
Start containers and load files:

bash
Copiar código
./step1.sh
4️⃣ Process and generate the final chapter
bash
Copiar código
./step2.sh
5️⃣ Open the interactive menu
bash
Copiar código
./user_menu.sh
📂 Project Structure
text
Copiar código
house-of-the-dockers/
├── step1.sh              # Create containers and copy files
├── step2.sh              # Process files and generate the final chapter
├── user_menu.sh          # Interactive menu for editing/viewing the book
├── sorted_docker1.txt    # Sample sorted text data
├── sorted_docker2.txt    # Sample sorted text data
├── sorted_docker3.txt    # Sample sorted text data
├── FINAL_CHAPTER.txt     # Output final chapter
├── README.md             # Documentation
└── LICENSE               # License file
📜 License
This project is public for demonstration and educational purposes.
All rights reserved © 2025 Jose Bordon.
