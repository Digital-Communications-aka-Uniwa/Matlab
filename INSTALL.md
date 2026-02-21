<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
</p>

<p align="center">
  <a href="https://www.uniwa.gr" target="_blank">University of West Attica</a> ·
  <a href="https://ice.uniwa.gr" target="_blank">Department of Computer Engineering and Informatics</a>
</p>

---

<p align="center">
  <strong>Digital Communications</strong>
</p>

<h1 align="center">
  Digital Communications at Matlab
</h1>

<p align="center">
  <strong>Vasileios Evangelos Athanasiou</strong><br>
  Student ID: 19390005
</p>

<hr>

<p align="center">
  <strong>Supervision</strong>
</p>

<p align="center">
  <a href="https://github.com/Ath21" target="_blank">GitHub</a> ·
  <a href="https://www.linkedin.com/in/vasilis-athanasiou-7036b53a4/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Supervisor: Christina Georgoulaki, Laboratory Teaching Staff
</p>
<p align="center">
  <a href="https://ice.uniwa.gr/en/emd_person/kristina-georgoulaki/" target="_blank">UNIWA Profile</a>
</p>

<p align="center">
  Co-supervisor: Emmanouel T. Michailidis, Senior Researcher<br>
</p>

<p align="center">
  <a href="https://scholar.google.com/citations?user=IMZqPhYAAAAJ&hl=en" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/etmichailidis/" target="_blank">LinkedIn</a>
</p>

</hr>

---

<p align="center">
  Athens, June 2023
</p>

---

<p align="center">
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVmYg3l4NAqO8I4eZHUY9-y7FlTqB0QR2PDw&s" width="250"/>
</p>

---

# INSTALL

## Digital Communications at Matlab

This repository contains a **Digital Communications** laboratory project implemented in **MATLAB**, focusing on **time-domain signal generation** and **frequency-domain analysis (FFT)**.  
It is designed for **academic use** within Digital Communications and Signal Processing courses.

---

## 1. Prerequisites

### 1.1 Operating System

Supported platforms:

- **Windows** (recommended)
- macOS
- Linux

MATLAB scripts in this repository are platform-independent.

---

## 2. MATLAB Environment

### 2.1 Required Software

- **MATLAB 2023** (recommended)
  - Earlier versions (R2020b+) should also work, but MATLAB 2023 was used during development and testing.

### 2.2 Required Toolboxes

The project primarily uses **core MATLAB functionality**.  
No specialized toolboxes are strictly required.

Optional (helpful but not mandatory):

- Signal Processing Toolbox

---

## 3. Hardware Requirements

- Minimum 4 GB RAM (8 GB recommended)
- At least 2 GB of free disk space
- Audio playback support (for `.WAV` file experiments)

---

## 4. Knowledge Prerequisites

Basic understanding of:

- Digital communications fundamentals
- Sampling theory
- Sinusoidal signals
- Fourier Transform & FFT
- MATLAB scripting (`.m` files, functions, plotting)

---

## 5. Installation

### 5.1 Clone the Repository

Using Git:

```bash
git clone https://github.com/Digital-Communications-aka-Uniwa/Matlab.git
```

### 5.2 Alternative (Without Git)

- Open the repository URL in your browser
- Click Code → Download ZIP
- Extract the ZIP file to a local directory

---

## 6. Install MATLAB

1. Install MATLAB 2023 from MathWorks
2. Activate MATLAB using:
   - University license, or
   - Personal MathWorks account
3. Verify MATLAB launches correctly

---

## 7. Project Setup in MATLAB

### 7.1 Set the Working Directory

1. Open MATLAB
2. Navigate to the cloned repository folder
3. Set it as the working directory:

```bash
cd path_to_repo/Matlab
```

Or:

- Use the Current Folder panel in MATLAB
- Right-click → Add to Path → Selected Folders and Subfolders

### 7.2 Verify Folder Structure

Ensure the following directories are visible:

- `assign/`
- `docs/`
- `src/`
- `graphs/`
  MATLAB scripts are located in:

```bash
src/
```

---

## 8. Running the Exercises

### 8.1 Execute an Exercise Script

From the MATLAB Command Window:

```bash
run('src/ask1.m')
```

Or:

- Open the script in the MATLAB Editor
- Press Run

Each `askX.m` file corresponds to a specific laboratory exercise.

### 8.2 Custom Signal Generation

Example: Generate a sinusoidal signal using the custom function:

```bash
x = mine_sin(f0, fs, A, phi, T1);
```

Where:

- `f0` : signal frequency
- `fs` : sampling frequency
- `A` : amplitude
- `phi` : phase
- `T1` : duration

### 8.3 Frequency-Domain Analysis

FFT-based analysis is performed using:

- `fft()`
- `fftshift()`
- Normalization by signal length

Results are visualized as:

- Time-domain plots
- Frequency-domain (amplitude spectrum) plots

### 8.4 Audio Signal Processing

The file:

```bash
src/3WORDS.WAV
```

is used in selected exercises involving:

- Signal filtering
- Spectrum analysis
- Entropy calculation

Ensure your system audio is enabled.

---

## 9. Output & Visualization

- Generated figures are displayed during script execution
- Saved plots are stored in:

```bash
graphs/
```

in `.png` format

---

## 10. Open the Documentation

1. Navigate to the `docs/` directory
2. Open the report corresponding to your preferred language:
   - English: `Digital-Comms-at-Matlab.pdf`
   - Greek: `Ψηφιακές-Επικοινωνίες-στο-Matlab.pdf`
