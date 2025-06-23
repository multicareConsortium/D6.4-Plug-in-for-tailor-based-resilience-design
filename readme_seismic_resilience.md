# Plug-in Installation Guide

Follow these steps to install the Seismic Resilience Plug-in:

## Prerequisites

Make sure you have the following installed:

- **Rhino** (latest version recommended)
- **Grasshopper** (included with Rhino)
- **Python** 3.12.0 or later  
    [Download Python](https://www.python.org/downloads/)
- **Git**  
    [Download Git](https://git-scm.com/downloads)
- **Internet connection**

## Installation Steps

### Mac/Linux via `.sh` Script

Automate the setup process using the provided Bash script.

**To use on Linux or macOS:**

1. Open Terminal.
2. Navigate to the folder containing `install_seismic_repo.sh`.
3. Make the script executable (if needed):
        ```bash
        chmod +x install_seismic_repo.sh
        ```
4. Run the script:
        ```bash
        ./install_seismic_repo.sh
        ```

**Notes:**
- Ensure `git` and `python3` are installed.
- The script expects a `requirements.txt` file for dependencies.

**On Windows:**
- This script does not run natively in Command Prompt or PowerShell.
- You can use:
        - **Windows Subsystem for Linux (WSL):** Open a WSL terminal and follow the Linux/macOS steps.
        - **Git Bash:** Install [Git for Windows](https://gitforwindows.org/), open Git Bash, and follow the steps above.
- Ensure Python is available in your Bash environment.

### Windows via `.bat` Script

To use the `install_seismic_repo.bat` script:

1. **Install Prerequisites**  
     Ensure **Git** and **Python 3.12.0 or later** are installed and added to your system's PATH.

2. **Download the Script**  
     Save `install_seismic_repo.bat` to a folder.

3. **Run the Script**  
     - Open Command Prompt (<kbd>Win</kbd> + <kbd>R</kbd>, type `cmd`, press Enter).
     - Navigate to the folder with the `.bat` file:
         ```cmd
         cd C:\Path\To\Your\Folder
         ```
     - Run the script:
         ```cmd
         install_seismic_repo.bat
         ```

4. **Follow the Prompts**  
     The script checks for Git and Python, clones the repository, sets up a virtual environment, and installs dependencies.  
     When "Installation complete" appears, open Rhino, launch Grasshopper, and load `D6.4_framework.gh`.

**Notes:**
- If you see errors about Git or Python, install them and ensure they're in your PATH.
- Run the script from a folder where you have write permissions (e.g., your user directory).
- For help, contact the project maintainers.

## Manual Install

1. **Clone the Repository**  
     Open a terminal (Command Prompt, PowerShell, or Terminal) and run:
     ```bash
     git clone https://github.com/ChimieleCode/preslam-ops-multicare.git
     ```

2. **Install Python Dependencies**  
     Navigate to the cloned directory:
     ```bash
     cd preslam-ops-multicare
     ```

     Create a virtual environment:
     ```bash
     python -m venv .venv
     ```

     Activate the virtual environment:

     - **Windows:**
         ```bash
         .venv\Scripts\activate
         ```
     - **macOS/Linux:**
         ```bash
         source .venv/bin/activate
         ```

     Install required packages:
     ```bash
     pip install -r requirements.txt
     ```

3. **Load the Plug-in in Grasshopper**  
     - Open Rhino and launch Grasshopper.
     - Open `D6.4_framework.gh`.
     - Select the path to the repository.

## Troubleshooting

- Ensure all prerequisites are installed and accessible from your system's PATH.
- Check your Python version with `python --version`.
- Check your Git installation with `git --version`.

For more help, see the [project documentation](./docs) or open an issue on the repository.
