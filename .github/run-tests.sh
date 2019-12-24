apt install -y build-essential
pip3 install -r requirements.txt

echo "[pytest]"
pytest

echo "[black]"
black --check .

echo "[flake8]"
flake8
