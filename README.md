## aptStuff.sh

**Description:**  
A simple Bash script that automates system maintenance by running the following commands in sequence:

1. `sudo apt update` – Updates package lists  
2. `sudo apt upgrade` – Upgrades all installed packages  
3. `sudo apt autoremove` – Removes unnecessary packages  
4. `sudo apt clean` – Cleans up cached package files

---

### 🧩 Usage Instructions

1. **Download the script**
   ```
   aptStuff.sh

   
2. **Make it executable**
   ```
   chmod +x ./aptStuff.sh


3. **Run with root access provided**
   ```
   sudo ./aptStuff.sh
