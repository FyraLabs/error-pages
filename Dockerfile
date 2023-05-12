# Hacky af, but it works
FROM tarampampam/error-pages:2.24.0 as builder

WORKDIR /src

COPY . .

RUN ["/bin/error-pages", "--verbose", "build", "--index", "html"]

FROM tarampampam/error-pages as runtime

COPY --from=builder /src/error-pages.yml /opt/error-pages.yml
COPY --from=builder /src/html /opt/html
COPY --from=builder /src/fyra.html /opt/fyra.html

ENV TEMPLATE_NAME="fyra"
