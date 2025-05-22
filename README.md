# Post-Build Setup Instructions

This guide walks you through setting up your development environment after a build. It includes setting permissions, executing the `post-build-setup.sh` script, activating the Python virtual environment, authenticating with Google Cloud, and running validation tests.

---

## 🚀 Step-by-Step Instructions


### 0. Download Startup Script

```bash
wget https://raw.githubusercontent.com/spacetimeengineer/startup-script/main/post-build-setup.sh
```

### 1. Set Execute Permission for the Script

Ensure the `post-build-setup.sh` script is executable:

```bash
sudo chmod +x post-build-setup.sh
```

### 2. Run the Script

Run the script **without** `sudo`:

```bash
./post-build-setup.sh
```

---

### 3. Navigate to Your Home Directory

If not already there, switch to your home folder:

```bash
cd ~
```

---

### 4. Activate the Python Virtual Environment

Activate the `aa_lab` virtual environment:

```bash
source aa_lab/bin/activate
```

If you're using `conda`, the equivalent might be:

```bash
conda activate aa_lab
```

---

### 5. Authenticate with Google Cloud

Start the authentication process for Google Cloud:

```bash
gcloud auth login
```

Follow the browser-based instructions to complete authentication.

---

### 6. Run Tests

After setup and authentication, run your test suite:

```bash
python -m unittest discover
```

Or, if you have a custom test runner:

```bash
pytest tests/
```

---

### 7. Explore Available Commands

Run the following to see available operations:

```bash
aa-help
```

This will list available tools, scripts, or modules you can run within the environment.

---

## ✅ You're Ready!

You’ve completed the setup and verified that everything is working. You can now start using the tools provided in your environment.

---
