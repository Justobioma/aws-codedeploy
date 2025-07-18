# 🚀 App Deployment on AWS EC2 with CodePipeline

This project is a simple Flask web application deployed on an AWS EC2 instance, fully automated via GitHub → CodePipeline → CodeDeploy. It demonstrates real-world CI/CD practices using AWS native services and Linux-based server provisioning.

---

## 📁 Project Structure
aws-codedeploy/ ├── myapp/ │   └── app.py               # Flask application ├── scripts/ │   └── start_flask.sh       # Startup script to launch Gunicorn ├── appspec.yml              # Deployment instructions for CodeDeploy ├── requirements.txt         # Python dependencies └── README.md                # Project overview

---

## 🧱 Stack & Services Used

- **Flask** — Lightweight web application
- **Gunicorn** — WSGI server for running Flask in production
- **Nginx** — Reverse proxy to route HTTP traffic to Gunicorn
- **AWS EC2** — Ubuntu/Fedora VM for hosting the app
- **AWS CodePipeline** — Connects GitHub repo to automated deployments
- **AWS CodeDeploy** — Executes deployment hooks and scripts

---

## 🔁 Deployment Workflow

1. **Source Stage**
   - Triggered by GitHub push to `main` branch

2. **Build Stage**
   - [If used] Installs dependencies and packages

3. **Deploy Stage (CodeDeploy)**
   - Pulls repo to EC2
   - Executes `start_flask.sh` to launch Gunicorn on port `8000`
   - Nginx proxies all traffic from port `80` → `127.0.0.1:8000`



