# ============================
# 1?? Base image
# ============================
FROM directus/directus:10.12.2

# ============================
# 2?? Set working directory
# ============================
WORKDIR /directus

# ============================
# 3?? Copy custom extensions ()
# ============================
COPY ./extensions ./extensions

# ============================
# 4?? Copy uploads directory (???????)
# ============================
COPY ./uploads ./uploads

# ============================
# 5?? Install additional packages (???????)
# ============================
# RUN apk add --no-cache ffmpeg imagemagick

# ============================
# 6?? Environment variables (???????)
# ============================
ENV NODE_ENV=production

# ============================
# 7?? Expose port & start Directus
# ============================
EXPOSE 8055
CMD ["directus", "start"]
