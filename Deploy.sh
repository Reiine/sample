echo "Starting..."

DEPLOY_DIR = "D:\Coding\jenkins_output"

mkdir -p "$DEPLOY_DIR"

if [-f Main.class]; then
  mv Main.class "$DEPLOY_DIR"
  echo "Main class moved!"
else
  echo "Failed"
  exit 1
fi

cd "$DEPLOY_DIR" || exit 1
echo "App Deployed"
