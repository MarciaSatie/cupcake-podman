FROM alpine:3.19
COPY hello.sh /hello.sh
RUN sed -i 's/\r$//' /hello.sh && chmod +x /hello.sh
ENTRYPOINT ["/hello.sh"]
CMD ["Hello from Podman!"]
# Containerfile