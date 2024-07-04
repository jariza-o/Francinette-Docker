FROM python:3.10-bookworm

RUN apt update -y && apt upgrade -y

RUN apt install -y curl pipx python3-setuptools clang

RUN python3 -m pip install --upgrade pip setuptools

RUN python3 -m pip install norminette

# RUN pipx install norminette && pipx ensurepath

RUN mkdir -p /42cursus/

RUN bash -c "$(curl -fsSL https://raw.github.com/xicodomingues/francinette/master/bin/install.sh)"

CMD ["bash", "-c", "while true; do sleep 1000; done"]
