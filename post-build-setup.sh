#!/bin/bash
set -e  # Exit immediately if any command fails

echo "🔊🐟 Initializing post-build-setup..."
sleep 0.1

# --- Ensure the home directory exists ---
echo "🏚️ Preparing workstation setup at $HOME..."
sleep 0.1
mkdir -p "$HOME"
echo "🛠️ Base station ($HOME) is operational."
sleep 0.4

# --- Copy files from /opt to $HOME if /opt is not empty ---
if [ -d /opt ] && [ "$(ls -A /opt)" ]; then
    echo "📦 /opt sonar payload detected. Transferring to base station..."
    sleep 0.1

    shopt -s dotglob  # Include hidden files (like camouflaged cephalopods 🦑)
    # cp -r /opt/aa-scripts "$HOME"/
    # cp -r /opt/google-cloud-login.sh "$HOME"/
    shopt -u dotglob

    echo "🎯 Payload deployed to $HOME — assets ready."
    sleep 0.4
else
    echo "🛑 /opt empty — no acoustic data to transfer."
    sleep 0.4
fi

# --- Set up Python virtual environment and install packages ---
echo "🔧 Setting up AA-SI environment..."
cd "$HOME"

sudo apt update
sudo apt install -y software-properties-common
sudo add-apt-repository -y ppa:deadsnakes/ppa
sudo apt install -y python3-venv
sudo apt install -y python3.10 python3.10-venv python3.10-dev
sudo apt update

ENV_NAME="aa_lab"
echo "🧪 Creating virtual test tank: $ENV_NAME"
python3.10 -m venv "$ENV_NAME"
source "$ENV_NAME/bin/activate"

pip install --upgrade pip

# Install acoustic processing packages
echo "🐬 Installing acoustics libraries into $ENV_NAME..."

echo "🎣 Installing AA-SI_aalibrary (active signal interpretation)..."
pip install --no-cache-dir -vv --force-reinstall git+https://github.com/spacetimeengineer/AA-SI_aalibrary.git@bcbc88a

echo "🐡 Installing echoml (echo classification & ML)..."
pip install --no-cache-dir -vv --force-reinstall git+https://github.com/spacetimeengineer/echoml.git@d4c8bbd

echo "🦈 Installing echosms (system management for sonar ops)..."
pip install echosms

echo "✅ Python enviornment $ENV_NAME is fully configured for aquatic signal processing."
sleep 0.4

# --- Final instructions ---
echo "📡 AA-SI enviornment is live and ready for use."
sleep 0.1
echo "🔁 Navigate to home directory with: cd"
sleep 0.1
echo "🧭 Review transferred files and verify AA-SI readiness. Enter 'aa-help' for a command reference with examples."
sleep 0.4
