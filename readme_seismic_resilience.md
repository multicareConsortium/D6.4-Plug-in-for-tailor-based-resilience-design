# Plug-in Installation Guide

Follow these steps to install the Seismic Resilience Plug-in:

## Prerequisites

Ensure you have the following installed:

- **Rhino** (latest version recommended)
- **Grasshopper** (included with Rhino)
- **Python** 3.12.0 or later  
    [Download Python](https://www.python.org/downloads/)
- **Git**  
    [Download Git](https://git-scm.com/downloads)
- **Internet connection**

## Installation Steps

1. **Clone the Repository**  
     Open a terminal (Command Prompt, PowerShell, or Terminal) and run:
     ```bash
     git clone https://github.com/ChimieleCode/preslam-ops-multicare.git
     ```

2. **Install Python Dependencies**  
     Navigate to the cloned directory:
     ```bash
     cd preslam-ops-multicare.git
     ```

    Create a virtual environment named `.venv`:
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
     - Open the D6.4_framework.gh
     - Select the path to the repository

## Troubleshooting

- Ensure all prerequisites are installed and accessible from your system's PATH.
- For Python issues, verify the version with `python --version`.
- For Git issues, verify installation with `git --version`.

For further assistance, refer to the [project documentation](./docs) or open an issue on the repository.