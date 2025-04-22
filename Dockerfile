FROM debian:bookworm-slim

RUN apt-get update && apt-get dist-upgrade -y && apt-get install -y ghostscript && apt-get autoremove --yes && apt-get clean && rm -rf /var/lib/{apt,dpkg,cache,log}/

WORKDIR /data

ENTRYPOINT [ "gs", "-dNOPAUSE", "-sDEVICE=pdfwrite", "-sOUTPUTFILE=combine.pdf", "-dBATCH"]
