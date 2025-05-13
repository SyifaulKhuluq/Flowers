# Menggunakan image nginx ringan sebagai web server
FROM nginx:alpine

# Menghapus file default Nginx
RUN rm -rf /usr/share/nginx/html/*

# Menyalin semua file project kamu ke folder web server Nginx
COPY . /usr/share/nginx/html

# Port yang digunakan
EXPOSE 80

# Menjalankan Nginx
CMD ["nginx", "-g", "daemon off;"]
