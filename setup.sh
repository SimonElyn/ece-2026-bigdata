# A lancer dans chaque nouveau terminal : source setup.sh

# Variables S3
export LAB_BUCKET_NAME="$KUBERNETES_NAMESPACE"
export AWS_ENDPOINT_URL="https://$AWS_S3_ENDPOINT"
export S3_ENDPOINT_URL="https://$AWS_S3_ENDPOINT"
export AWS_PAGER=""
export PATH="$HOME/.local/bin:$PATH"

# Installe s5cmd s'il manque
if ! command -v s5cmd > /dev/null; then
  mkdir -p ~/.local/bin
  curl -fsSL https://github.com/peak/s5cmd/releases/download/v2.3.0/s5cmd_2.3.0_Linux-64bit.tar.gz \
    | tar -xz -C ~/.local/bin s5cmd
fi

# Environnement Python
uv sync -q

echo "Pret : bucket $LAB_BUCKET_NAME"