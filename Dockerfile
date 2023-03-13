FROM python:3.10

WORKDIR /opt/

COPY . .

RUN pip install --no-cache-dir -e .

USER 65534

CMD ["openvpn-auth-azure-ad"]
