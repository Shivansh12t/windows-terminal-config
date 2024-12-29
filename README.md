### Setting Up `$PROFILE` in Windows Terminal

This guide explains how to create, edit, and source your `$PROFILE` file in Windows Terminal using PowerShell.

---

### **1. Locate or Create the `$PROFILE` File**
- Check if the `$PROFILE` file exists:
  ```powershell
  Test-Path $PROFILE
  ```
  - If the result is `False`, create the `$PROFILE` file:
    ```powershell
    New-Item -ItemType File -Path $PROFILE -Force
    ```

- **Note:** By default, `$PROFILE` is named `Microsoft.PowerShell_profile.ps1`.

---

### **2. Edit the `$PROFILE` File**
- Open the file for editing:
  ```powershell
  notepad $PROFILE
  ```

- Add your code or aliases. Example:
  ```powershell
  Set-Alias exp "explorer.exe"
  ```

---

### **3. Source the `$PROFILE` File**
- Apply the changes without restarting the terminal:
  ```powershell
  . $PROFILE
  ```

---

### **4. Use Your Customizations**
- Test the alias or code added to `$PROFILE`. For the example above:
  ```powershell
  exp
  ```
  This should run the `explorer.exe` script.

---

### **5. Repository Integration**
- If you're storing `$PROFILE` in your repository as `profile.ps1`, you can source it directly:
  ```powershell
  . ./profile.ps1
  ```
- Ensure you’re in the correct directory where `profile.ps1` is located, or provide the full path to the file.

---

### Notes
- `$PROFILE` changes apply only to PowerShell and not CMD or other shells.
- Ensure execution policy allows scripts to run:
  ```powershell
  Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
  ```
