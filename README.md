# Post-Build Setup Instructions

This guide walks you through setting up your development environment after a build. It includes setting permissions, executing the `init.sh` script, activating the Python virtual environment, authenticating with Google Cloud, and running validation tests.

---

## 🚀 Step-by-Step Instructions


### 1. Download and Run Initialization Script -> Activate AA-SI enviornment

```bash
sudo wget https://raw.githubusercontent.com/spacetimeengineer/AA-SI_init/main/init.sh && sudo chmod +x init.sh && ./init.sh && cd ~ && source aa_lab/bin/activate
```

---

### 2. Authenticate with Google Cloud

Start the authentication process for Google Cloud:

```bash
gcloud auth application-default login
gcloud config set account {ACCOUNT} 
gcloud config set project ggn-nmfs-aa-dev-1 
```

Follow the browser-based instructions to complete authentication.

---

### 3. Explore Available Commands

Run the following to see available operations:

```bash
aa-help
```

This will list available tools, scripts, or modules you can run within the environment.

---

## ✅ You're Ready!

You’ve completed the setup and verified that everything is working. You can now start using the tools provided in your environment.

---
