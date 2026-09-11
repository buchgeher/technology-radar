# Technology Radar – Autonomous Delivery Robot System

Welcome to the collaborative **Technology Radar** repository for our Autonomous Delivery Robot System.

This repository uses the Thoughtworks **Build Your Own Radar (BYOR)** tool to visualize architectural technology choices across 4 quadrants and 4 maturity rings.

---

## 🎯 Task for the Student Groups

Each student group (4 groups in total) selects **at least 1 technology / practice per quadrant**:
1. 🛠️ **Techniques:** Architectural patterns & development practices *(e.g., Event-Driven, Canary Releases, Lightweight ADRs)*
2. ☁️ **Platforms:** Cloud, edge OS & middleware *(e.g., ROS 2, Kubernetes, Zenoh, Kafka, AWS IoT)*
3. 🧰 **Tools:** CLI tools, design, testing, observability *(e.g., Docker, Foxglove Studio, Structurizr)*
4. 💻 **Languages & Frameworks:** Edge & backend stack *(e.g., Rust, C++20, Python, FastAPI)*

For each chosen technology, agree on a maturity ring:
- 🟢 **Adopt:** High confidence, production-proven standard.
- 🔵 **Trial:** Promising technology evaluated on low-risk / pilot components.
- 🟡 **Assess:** Interesting innovation; needs research / prototype validation.
- 🔴 **Hold:** Proceed with caution or avoid; replaced by better solutions.

---

## 📝 How to Contribute

1. **Clone the repository:**
   ```bash
   git clone git@github.com:buchgeher/technology-radar.git
   cd technology-radar
   ```

2. **Create a branch for your group:**
   ```bash
   git checkout -b group-<N>-contributions
   ```

3. **Add your entries to `radar.csv`:**
   Ensure each row follows the CSV format:
   ```csv
   name,ring,quadrant,isNew,description
   YourTechName,Adopt|Trial|Assess|Hold,Techniques|Platforms|Tools|Languages & Frameworks,TRUE|FALSE,"Your rationale and description in quotes."
   ```

4. **Commit & push your branch:**
   ```bash
   git add radar.csv
   git commit -m "Add Group <N> technology proposals"
   git push origin group-<N>-contributions
   ```

5. **Open a Pull Request** on GitHub against `main`.

---

## 🚀 Running the Radar Locally

### Option 1: Using Docker Compose (Recommended)
```bash
docker compose up
```
Open **[http://localhost:8080](http://localhost:8080)** in your browser.  
In the input box for the data URL, enter:
```
files/radar.csv
```
*(Because `radar.csv` is mounted into the container, saving edits and refreshing the browser immediately updates the radar!)*

### Option 2: Using Plain Docker
```bash
docker build -t tech-radar .
docker run --rm -p 8080:80 tech-radar
```
Open **[http://localhost:8080](http://localhost:8080)** and enter `files/radar.csv`.
