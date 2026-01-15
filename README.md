<p align="center">
  <img src="https://www.especial.gr/wp-content/uploads/2019/03/panepisthmio-dut-attikhs.png" alt="UNIWA" width="150"/>
</p>

<p align="center">
  <strong>UNIVERSITY OF WEST ATTICA</strong><br>
  SCHOOL OF ENGINEERING<br>
  DEPARTMENT OF COMPUTER ENGINEERING AND INFORMATICS
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

<p align="center">
  <a href="https://github.com/Ath21" target="_blank">GitHub</a> ·
  <a href="https://www.linkedin.com/in/vasilis-athanasiou-7036b53a4/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Supervisor: Emmanouel T. Michailidis, Senior Researcher<br>
</p>

<p align="center">
  <a href="https://scholar.google.com/citations?user=IMZqPhYAAAAJ&hl=en" target="_blank">UNIWA Profile</a> ·
  <a href="https://www.linkedin.com/in/etmichailidis/" target="_blank">LinkedIn</a>
</p>

<p align="center">
  Athens, June 2023
</p>

---

# Project Overview

This project, completed using **MATLAB 2023**, focuses on fundamental concepts of **Digital Communications**. The primary objective is the generation of sinusoidal signals in the **time domain** and their analysis in the **frequency domain** using the **Fast Fourier Transform (FFT)**. Through structured exercises, the project bridges theoretical signal-processing concepts with practical MATLAB implementations.


---

## Table of Contents


| Section | Folder / File | Description |
|------:|---------------|-------------|
| 1 | `assign/` | Assignment material |
| 1.1 | `assign/DC_ExerLab23.pdf` | Digital Communications laboratory exercises (English) |
| 1.2 | `assign/ΨΕ_ΑσκΕργ23.pdf` | Ψηφιακές Επικοινωνίες – εργαστηριακές ασκήσεις (Greek) |
| 2 | `docs/` | Theoretical documentation |
| 2.1 | `docs/Digital-Comms-at-Matlab.pdf` | Digital Communications using MATLAB (English) |
| 2.2 | `docs/Ψηφιακές-Επικοινωνίες-στο-Matlab.pdf` | Ψηφιακές Επικοινωνίες με χρήση MATLAB (Greek) |
| 3 | `src/` | MATLAB source code |
| 3.1 | `src/ask1.m` | Exercise 1 MATLAB implementation |
| 3.2 | `src/ask2.m` | Exercise 2 MATLAB implementation |
| 3.3 | `src/ask3.m` | Exercise 3 MATLAB implementation |
| 3.4 | `src/ask4.m` | Exercise 4 MATLAB implementation |
| 3.5 | `src/ask5.m` | Exercise 5 MATLAB implementation |
| 3.6 | `src/ask6.m` | Exercise 6 MATLAB implementation |
| 3.7 | `src/ask7.m` | Exercise 7 MATLAB implementation |
| 3.8 | `src/ask8.m` | Exercise 8 MATLAB implementation |
| 3.9 | `src/ask9.m` | Exercise 9 MATLAB implementation |
| 3.10 | `src/ask10.m` | Exercise 10 MATLAB implementation |
| 3.11 | `src/ask11.m` | Exercise 11 MATLAB implementation |
| 3.12 | `src/ask12.m` | Exercise 12 MATLAB implementation |
| 3.13 | `src/ask13.m` | Exercise 13 MATLAB implementation |
| 3.14 | `src/ask14.m` | Exercise 14 MATLAB implementation |
| 3.15 | `src/ask15.m` | Exercise 15 MATLAB implementation |
| 3.16 | `src/ask16.m` | Exercise 16 MATLAB implementation |
| 3.17 | `src/ask17.m` | Exercise 17 MATLAB implementation |
| 3.18 | `src/ask18.m` | Exercise 18 MATLAB implementation |
| 3.19 | `src/ask19.m` | Exercise 19 MATLAB implementation |
| 3.20 | `src/ask20.m` | Exercise 20 MATLAB implementation |
| 3.21 | `src/ask21.m` | Exercise 21 MATLAB implementation |
| 3.22 | `src/ask24.m` | Exercise 24 MATLAB implementation |
| 3.23 | `src/ask27.m` | Exercise 27 MATLAB implementation |
| 3.24 | `src/bpfilt.m` | Band-pass filter implementation |
| 3.25 | `src/butterworth_filter.m` | Butterworth filter design |
| 3.26 | `src/mine_sin.m` | Custom sine signal generation |
| 3.27 | `src/phase_sin.m` | Phase-shifted sine signal generation |
| 3.28 | `src/myentropy.m` | Entropy calculation function |
| 3.29 | `src/3WORDS.WAV` | Audio sample used in signal processing exercises |
| 4 | `graphs/` | Output graphs and figures |
| 4.1 | `graphs/*.png` | Plots generated from MATLAB exercises |
| 5 | `README.md` | Repository overview and usage instructions |

---

## Core Exercises

### Exercise 1: Sine Wave Generation

The objective of this exercise is to implement a custom MATLAB function named `mine_sin` for generating a sinusoidal signal based on user-defined parameters.

**Inputs**
- Frequency 

$$ 
f_0 
$$

- Sampling frequency 

$$ 
f_s 
$$

- Amplitude 

$$ 
A 
$$

- Phase 

$$ 
\varphi 
$$

- Signal duration 

$$ 
T_1 
$$

**Key Logic**
- The sampling period is calculated as:

  $$
  T_s = \frac{1}{f_s}
  $$

- A time axis is created from 

$$ 
0 
$$ 

to 

$$ 
T_1 - T_s 
$$

**Signal Equation**

$$
x(t) = A \cdot \sin(2\pi f_0 t + \varphi)
$$

**Visualization**
- Time-domain plot displaying signal amplitude versus time

---

### Exercise 2: Amplitude Spectrum Analysis

This exercise introduces a second function, `phase_sin`, used to compute and visualize the **amplitude spectrum** of the sinusoidal signal generated in Exercise 1.

**FFT Implementation**
- Uses MATLAB’s `fft()` function to transform the signal from the time domain to the frequency domain

**Signal Processing Techniques**
- `fftshift()` is applied to center the spectrum around 0 Hz
- Amplitude normalization is performed by dividing by the signal length 

$$ 
N 
$$

**Bandwidth Calculation**
- The bandwidth is determined using the sampling interval
- The time resolution 

$$ 
dt 
$$ 

is defined as:
  
$$
dt = \frac{1}{100 \cdot f_0}
$$

**Visualization**
- Frequency-domain plot displaying **Frequency (Hz)** versus **Amplitude (Volts)**

---

## Project Contents

The complete laboratory report consists of **30 exercises across 131 pages**, covering a broad range of topics in **Digital Communications** and **Digital Signal Processing**.

| Exercise Range | Pages     | Focus                               |
|----------------|-----------|-------------------------------------|
| Exercise 1     | 4 – 7     | Time-domain sine wave generation    |
| Exercise 2     | 7 – 11    | Amplitude spectrum (FFT analysis)   |
| Exercises 3–30 | 11 – 131  | Advanced digital communications     |

---

This project provides a strong foundation in **signal generation, spectral analysis, and MATLAB-based digital communication techniques**, combining theoretical rigor with practical experimentation.

---

# Installation & Setup Guide

This repository contains a **Digital Communications** laboratory project implemented in **MATLAB**, focusing on **time-domain signal generation** and **frequency-domain analysis (FFT)**.  
It is designed for **academic use** within Digital Communications and Signal Processing courses.

---

## Prerequisites

### 1. Operating System
Supported platforms:
- **Windows** (recommended)
- macOS
- Linux

MATLAB scripts in this repository are platform-independent.

---

### 2. MATLAB Environment

#### Required Software
- **MATLAB 2023** (recommended)
  - Earlier versions (R2020b+) should also work, but MATLAB 2023 was used during development and testing.

#### Required Toolboxes
The project primarily uses **core MATLAB functionality**.  
No specialized toolboxes are strictly required.

Optional (helpful but not mandatory):
- Signal Processing Toolbox

---

### 3. Hardware Requirements
- Minimum 4 GB RAM (8 GB recommended)
- At least 2 GB of free disk space
- Audio playback support (for `.WAV` file experiments)

---

### 4. Knowledge Prerequisites

Basic understanding of:
- Digital communications fundamentals
- Sampling theory
- Sinusoidal signals
- Fourier Transform & FFT
- MATLAB scripting (`.m` files, functions, plotting)

---

## Installation

### 1. Clone the Repository

Using Git:
```bash
git clone https://github.com/Digital-Communications-aka-Uniwa/Matlab.git
```

#### Alternative (Without Git)

- Open the repository URL in your browser
- Click Code → Download ZIP
- Extract the ZIP file to a local directory

### 2. Install MATLAB
1. Install MATLAB 2023 from MathWorks
2. Activate MATLAB using:
    - University license, or
    - Personal MathWorks account
3. Verify MATLAB launches correctly

---

## Project Setup in MATLAB
### 1. Set the Working Directory
1. Open MATLAB
2. Navigate to the cloned repository folder
3. Set it as the working directory:
```bash
cd path_to_repo/Matlab
```
Or:
- Use the Current Folder panel in MATLAB
- Right-click → Add to Path → Selected Folders and Subfolders

### 2. Verify Folder Structure
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

## Running the Exercises
### 1. Execute an Exercise Script
From the MATLAB Command Window:
```bash
run('src/ask1.m')
```
Or:
- Open the script in the MATLAB Editor
- Press Run

Each `askX.m` file corresponds to a specific laboratory exercise.

### 2. Custom Signal Generation

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

### 3. Frequency-Domain Analysis
FFT-based analysis is performed using:
- `fft()`
- `fftshift()`
- Normalization by signal length

Results are visualized as:
- Time-domain plots
- Frequency-domain (amplitude spectrum) plots

### 4. Audio Signal Processing
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

## Output & Visualization
- Generated figures are displayed during script execution
- Saved plots are stored in:
```bash
graphs/
```
in `.png` format

---

## Open the Documentation
1. Navigate to the `docs/` directory
2. Open the report corresponding to your preferred language:
    - English: `Digital-Comms-at-Matlab.pdf`
    - Greek: `Ψηφιακές-Επικοινωνίες-στο-Matlab.pdf`