# docker-revealjs
Make revealjs slideshows easily with docker

# Usage (temporary until I set up automatic building of the docker image)
```
git clone https://github.com/UKHomeOffice/docker-revealjs.git
cd docker-revealjs
```
Modify index.html to create your slide deck, then...
```
docker build -t my-presentation .
docker run -p 8000:8000 my-presentation
```
