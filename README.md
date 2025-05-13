# Easy RAR — Batch RAR Password Cracker

**Easy RAR** is a lightweight Windows batch tool that uses **7-Zip** and a wordlist 
to attempt password recovery on `.rar` files via a **dictionary attack**.

---

## ⚠️ Disclaimer

> This tool is intended for **educational purposes** and for recovering
> passwords on **your own files** or files you have permission to access.  
> Unauthorized access to protected archives is **illegal** and **unethical**.
> The developer is not responsible for misuse.

---

## 🔧 Features

- ✅ Cracks password-protected `.rar` files using a wordlist
- ✅ Colorful terminal interface with ASCII banner
- ✅ Works entirely offline
- ✅ Simple and portable — no compilation or installation needed (just edit & run)

---

## 📦 Requirements

- ✅ Windows 7 or newer
- ✅ [7-Zip](https://www.7-zip.org/) installed in `C:\Program Files\7-Zip\7z.exe`
- ✅ RAR archive to crack

---

## 🛠️ How to Use

1. **Install [7-Zip](https://www.7-zip.org/)** if not already installed.
2. Place your password-protected `.rar` file anywhere.
3. Run the script by double-clicking `EasyRAR.bat` or running it via terminal.
4. When prompted, paste the **full path** to your `.rar` file.
5. The tool will begin attempting passwords from the wordlist.


---

## ❌ If Password is Not Found

If you see:

[INFO] Password not found in the wordlist.
[HINT] The password may be too strong or not included in this wordlist.
       Try using a larger or more targeted wordlist.

---

You can get bigger lists from:

- 🔗 [SecLists](https://github.com/danielmiessler/SecLists)
- 🔗 [CrackStation](https://crackstation.net/)
- 🔗 [Weakpass](https://weakpass.com/)
