FROM redis

ENV REDIS_PASSWORD password
CMD ["sh", "-c", "exec redis-server --requirepass \"$REDIS_PASSWORD\""]
