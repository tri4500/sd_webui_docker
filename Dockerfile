FROM python:3.10.12

RUN useradd sdWebUi

RUN usermod -aG sudo sdWebUi

RUN apt update

RUN apt install python3-venv -y

RUN python3 -m venv venv/

RUN apt update

RUN apt update && apt install -y libgl1-mesa-glx

RUN apt update && apt install --no-install-recommends google-perftools -y

RUN apt update

USER sdWebUi

WORKDIR /home/sdWebUi/stable-diffusion-webui

COPY . .

RUN git config --global --add safe.directory /home/sdWebUi/stable-diffusion-webui

EXPOSE 7860

CMD ["./start-script.sh"]