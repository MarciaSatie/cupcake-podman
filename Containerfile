FROM alpine:3.19
COPY hello.sh /hello.sh
RUN chmod +x /hello.sh
ENTRYPOINT ["/hello.sh"]
CMD ["Hello from Podman!"]
