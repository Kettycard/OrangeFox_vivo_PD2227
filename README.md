# OrangeFox Recovery for vivo X90 Pro+ (PD2227 / V2227A)

This repository contains the Device Tree and GitHub Actions CI/CD configuration to compile **OrangeFox Recovery** for the **vivo X90 Pro+** (`PD2227` / `kalama` / Snapdragon 8 Gen 2).

## Device Specifications

| Feature | Details |
| :--- | :--- |
| **Device** | vivo X90 Pro+ (`PD2227` / `V2227A`) |
| **SoC** | Qualcomm Snapdragon 8 Gen 2 (`kalama` / `SM8550`) |
| **Display** | 1440 x 3200 AMOLED |
| **Partition Architecture** | A/B with Dedicated Recovery (`recovery_a` / `recovery_b`) |
| **Dynamic Partitions** | Yes (Super: ~15.5 GB) |
| **Kernel Arch** | GKI 2.0 (Header v4) |

---

## How to Build via GitHub Actions (Recommended - 0 Local Load)

1. Push this repository to your GitHub account (public or private):
   ```bash
   git init
   git add .
   git commit -m "Initial commit for OrangeFox PD2227"
   git branch -M main
   git remote add origin https://github.com/<your-username>/<your-repo-name>.git
   git push -u origin main
   ```

2. Go to the **Actions** tab in your GitHub repository.
3. Select the workflow **"Build OrangeFox Recovery"**.
4. Click **"Run workflow"** (Keep default settings: `fox_12.1` and `twrp_PD2227-eng`).
5. Wait for the compilation to finish (~30-45 minutes on GitHub's cloud runner).
6. Download the generated `OrangeFox-PD2227-*.zip` and `recovery.img` from the workflow run's **Artifacts** section!

---

## How to Flash the Compiled Recovery

1. Reboot your phone into Fastboot / Bootloader mode:
   ```bash
   adb reboot bootloader
   ```
2. Flash the compiled recovery image into the recovery partition:
   ```bash
   fastboot flash recovery recovery.img
   ```
3. Reboot directly into recovery:
   ```bash
   fastboot reboot recovery
   ```
