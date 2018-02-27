FROM scratch
ADD ca-certificates.crt /etc/ssl/certs/
ADD main /
EXPOSE 4000 4001
CMD ["/main"]
