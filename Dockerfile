# Use a tiny nginx image and copy pre-built static files into it.
# This assumes the workflow already performs `npm ci` + `npm run build` and
# produces a `dist/` folder at repo root.
FROM nginx:stable-alpine
COPY dist/ /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
