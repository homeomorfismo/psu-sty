# Portland State University beamer theme

This is a simple beamer theme for Portland State University. It is based on the
guidelines provided in the
[PSU Brand Guide](https://www.pdx.edu/university-communications/tools-and-templates).

A `makefile` is provided to compile the example presentation.

## Logos

The `Logos/PSU` directory contains the official PSU logo in various formats. We
have different file formats in theirs own subdirectories.

```
Logos/PSU
├── EPS
│   ├── PSU_Logo_Horizontal
│   ├── PSU_Logo_Vertical
│   └── PSU_Logomark
├── JPEG
│   ├── PSU_Logo_Horizontal
│   ├── PSU_Logo_Vertical
│   └── PSU_Logomark
└── PNG
    ├── PSU_Logo_Horizontal
    ├── PSU_Logo_Vertical
    └── PSU_Logomark
```

The `Logos/` directory contains logos for various departments and schools at
PSU.

```
.
├── Logos
│   ├── PSU
│   ├── BusinessAccelerator
│   ├── CenterforEntrepreneurship
│   ├── CenterforExecutiveandProfessionalEducaiton
│   ├── CenterforInternshipMentoringandResearch
│   ├── CenterforRealEstate
│   ├── CollegeOfLiberalArtandSciences
│   ├── CollegeOfUrbanAndPublicAffairs
│   ├── CollegeofEducation
│   ├── CollegeoftheArts
│   ├── InstituteforSustainableSolutions
│   ├── Library
│   ├── MaseehCollege
│   ├── OHSU-PSUSchoolofPublicHealth
│   ├── ProfessionalDevelopmentCenter
│   ├── SchoolOfBusinessAdministration
│   ├── SchoolOfExtendedStudies
│   ├── SchoolOfFineAndPerformingArts
│   ├── SchoolOfSocialWork
│   ├── TheNonprofitInstitute
│   └── UniversityHonorsCollege
├── README.md
└── psu-colors.sty
```

## Font

The official PSU font is Acumin.

### Installation

#### macOS

1. Download the Acumin Font: Obtain the Acumin font files (usually .ttf or .otf
   format) from a trusted source or a licensed font provider.
2. Install the Font: Open the Finder and navigate to the folder containing the
   downloaded font files. Double-click on each font file to open it in the Font
   Book application. In the Font Book application, click the "Install Font"
   button.
3. Verify Installation: Open the Font Book application (Applications > Font
   Book). Check that the Acumin font appears in the list of installed fonts.

#### Linux

1. Download the Acumin Font: Obtain the Acumin font files (usually .ttf or .otf
   format) from a trusted source or a licensed font provider.

2. Create Fonts Directory (if it doesn't exist): Open a terminal and run the
   following command to create a fonts directory in your home folder if it
   doesn't already exist:

```bash
mkdir -p ~/.local/share/fonts
```

3. Copy Font Files: Copy the downloaded font files to the newly created fonts
   directory. For example, if the font files are in the Downloads folder, run:

```bash
cp ~/Downloads/Acumin*.ttf ~/.local/share/fonts/
```

Adjust the file path as necessary for your system.

4. Update Font Cache: Update the font cache by running the following command in
   the terminal:

```bash
fc-cache -f -v
```

5. Verify Installation: Check if the font is installed correctly by running:

```bash
fc-list | grep "Acumin"
```

You should see the Acumin font listed in the output.
