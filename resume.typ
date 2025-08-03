#import "@preview/clickworthy-resume:1.0.1": *

// Personal Information
#let name = "Yassen Tambakti"
#let email = "ytambakti@acm.org"
#let github = "github.com/CollCaz"
#let linkedin = "linkedin.com/in/yassentambakti"
#let contacts = (
  [#link("mailto:" + email)[#email]],
  [#link("https://" + github)[#github]],
  [#link("https://" + linkedin)[#linkedin]],
)
#let location = "Tripoli, Libya"

// Professional Summary
#let summary = ""

// Resume configuration
#let theme = rgb("#26428b")
#let font = "New Computer Modern"
#let fontSize = 11pt
#let lang = "en"
#let margin = (
  top: 1cm,
  bottom: 0cm,
  left: 1cm,
  right: 1cm,
)

// Resume Header and configuration
#show: resume.with(
  author: name,
  location: location,
  contacts: contacts,
  summary: summary,
  theme-color: theme,
  font: font,
  font-size: fontSize,
  lang: lang,
  margin: margin,
)

// Education
= Education
#edu(
  institution: "University of Tripoli",
  date: "2021 - Present",
  location: "Tripoli, Libya",
  degrees: (
    ("B.S.", "Computer Science"),
  ),
)

// Experience
= Experience
#exp(
  title: "Fullstack Developer",
  organization: "Kevelop",
  date: "April 2025 – Present",
  details: [
    - Took over an existing Next.js + PostgreSQL codebase, leading all backend and frontend development independently.
    - Redesigned database schema and API routes; implemented new UI features from Figma designs.
    - Collaborated with a designer while owning all engineering decisions with minimal oversight.
  ]
)

#exp(
  title: "Lead Backend Developer - Part Time",
  organization: "University of Tripoli",
  date: "January 2025 – Present",
  details: [
    - Designed and implemented a scalable backend in Go for the university’s new website, currently in development.
    - Made all major technical decisions, including API design, database modeling, and system architecture.
    - Collaborated with a React frontend team while supervising junior developers and reviewing backend code.
    - Coordinated with stakeholders to align backend functionality with institutional goals and timelines.
  ]
)

// Projects
= Projects
#exp(
  title: link("https://github.com/jordan-devhub/lunar-nav-bot")[Lunar Navigation Bot (Autonomous Systems)],
  details: [
    - Simulated and field-tested a planetary rover using Jetson Nano, LiDAR, and YOLOv6 for rock classification.
    - Used MQTT to coordinate movement commands with a relay station over intermittent mesh networks.
    - Placed among top finalists in the #link("https://www.hackster.io/entries/space-bots-2023")[*SpaceBot 2023 Challenge*].
  ]
)

#exp(
  title: link("https://github.com/jordan-devhub/speechsync")[SpeechSync Streamer (Real-Time Communication)],
  details: [
    - Created a voice chat system with on-the-fly transcription and translation via Whisper + MarianMT.
  ]
)

#exp(
  title: link("https://github.com/jordan-devhub/audio-amp-kit")[Portable Audio Amplifier Kit (Hardware Design)],
  details: [
    - Designed a 7W audio amplifier with integrated thermal shutdown and overcurrent protection.
  ],
)

// Awards
= Awards
#exp(
  title: "Libyan collegiate programming contest 2024 finalist",
  details: [
    - Won 5th place in the 2024 LCPC, and qualified for the 2024 Arab collegiate programming contest (ACPC).
  ]
)

// Skills
= Skills
#skills((
  ("Expertise", (
    [Edge Computing],
    [Network Protocols],
    [Robotics Systems],
    [FPGA Toolchains],
    [Embedded Audio],
    [Multilingual NLP],
    [System Monitoring],
    [CI/CD Automation],
  )),
  ("Software", (
    [PyTorch],
    [TensorFlow Lite],
    [OpenCV],
    [KiCad],
    [Docker],
    [Kubernetes],
    [Zephyr RTOS],
    [Vivado],
    [gRPC],
    [Git],
    [JIRA],
    [WireShark],
    [Linux],
  )),
  ("Languages", (
    [Python],
    [C/C++],
    [Rust],
    [Bash],
    [MATLAB],
    [VHDL],
    [Verilog],
    [TypeScript],
  )),
))
