# 🎯 OSINT Email Hunter v3.3

An enterprise-grade, asynchronous OSINT email harvesting tool written in Python. It deploys active deep crawling and passive search engine scrapers to extract hidden email targets efficiently.

## 🚀 Features
- **Highly Concurrent:** Built on top of `asyncio` and `aiohttp` for maximum performance.
- **Passive & Active Recon:** Combines search engine database queries with web directory crawling.
- **Anti-Bot Defenses:** Built-in automated proxy rotation engine to bypass CAPTCHA.
- **Smart Validation:** Boundary-locked strict regex to minimize false positives.

---

## 🛠️ One-Click Installation (Kali Linux / Ubuntu)

Open your terminal and run the following command to download, install dependencies, and make the tool accessible from **any directory** instantly:

```bash
curl -sSL githubusercontent.com | sudo bash
```

## 📖 Manual Installation

If you prefer to install it step-by-step manually:

1. Clone the repository:
   ```bash
   git clone github.com
   cd osint-email-hunter
   ```
2. Install Python dependencies:
   ```bash
   pip3 install aiohttp beautifulsoup4 lxml
   ```
3. Move to global path and set permissions:
   ```bash
   sudo cp hunter /usr/local/bin/
   sudo chmod +x /usr/local/bin/hunter
   ```

---

## 🎯 Usage

Since it is installed globally, you can run it from **any folder** using the `hunter` command:

```bash
hunter -u example.com -m 50 -c 8
```

### Options:
- `-u, --url` : Target website or domain name (Required)
- `-m, --max` : Max webpage crawl depth limit (Default: 40)
- `-c, --concurrency` : Simultaneous processing pipelines (Default: 6)

The unique results will be cleanly structured and written to `hunter_results.txt` inside your current working directory.

