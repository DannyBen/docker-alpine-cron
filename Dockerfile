FROM alpine
WORKDIR /app
ENV PS1 "\n\n>> cron \W \$ "
RUN apk --no-cache add bash
COPY app .
RUN chmod +x entrypoint
ENTRYPOINT ["/app/entrypoint"]
