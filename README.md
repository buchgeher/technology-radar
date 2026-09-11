# Technology Radar – Autonomous Delivery Robot System

Welcome to the collaborative **Technology Radar** repository for our Autonomous Delivery Robot System.

This repository uses the Thoughtworks **Build Your Own Radar (BYOR)** tool to visualize architectural technology choices across 4 quadrants and 4 maturity rings.

---

## 🎯 Task for the Student Groups

Each student group defines **1 technology for EVERY quadrant AND EVERY maturity level** (4 entries per group):

1. 🛠️ **Techniques:** Architectural patterns & development practices *(e.g., Event-Driven, Canary Releases, Lightweight ADRs)*
2. ☁️ **Platforms:** Cloud, edge OS & middleware *(e.g., ROS 2, Kubernetes, Zenoh, Kafka, AWS IoT)*
3. 🧰 **Tools:** CLI tools, design, testing, observability *(e.g., Docker, Foxglove Studio, Structurizr)*
4. 💻 **Languages & Frameworks:** Edge & backend stack *(e.g., Rust, C++20, Python, FastAPI)*

Across your group's 4 picks, cover all 4 maturity rings:
- 🟢 **Adopt:** High confidence, production-proven standard.
- 🔵 **Trial:** Promising technology evaluated on low-risk / pilot components.
- 🟡 **Assess:** Interesting innovation; needs research / prototype validation.
- 🔴 **Hold:** Proceed with caution or avoid; replaced by better solutions.

> **Important:**
> - All existing entries in `radar.csv` are marked as **`isNew: FALSE`**.
> - **Mark your new entries with `isNew: TRUE`** so they visually stand out as new blips on the radar!
> - Include the **full names of all group members** in your Git commit message.

---

## 📝 How to Contribute

1. **Clone the repository & create a branch:**
   ```bash
   git clone git@github.com:buchgeher/technology-radar.git
   cd technology-radar
   git checkout -b group-<N>-contributions
   ```

2. **Add your entries to `radar.csv`:**
   Ensure each row follows the CSV format:
   ```csv
   name,ring,quadrant,isNew,description
   TensorRT,Assess,Tools,TRUE,"Inference optimizer evaluated for real-time edge obstacle detection."
   ```

3. **Commit with your names & push:**
   ```bash
   git add radar.csv
   git commit -m "Group <N> (Firstname Lastname, Firstname Lastname): Add radar proposals"
   git push origin group-<N>-contributions
   ```

4. **Open a Pull Request** on GitHub against `main`.

---

## 🚀 Running the Radar Locally

### Using Docker Compose (Recommended)
```bash
docker compose up
```
Open **[http://localhost:8080](http://localhost:8080)** in your browser.  
In the input box for the data URL, enter:
```
files/radar.csv
```
*(Because `radar.csv` is mounted into the container, saving edits and refreshing the browser immediately updates the radar!)*

### Using Plain Docker
```bash
docker build -t tech-radar .
docker run --rm -p 8080:80 tech-radar
```
Open **[http://localhost:8080](http://localhost:8080)** and enter `files/radar.csv`.
