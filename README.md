This is a basic template project for parsing PDF documents to text using [XpdfReader](https://www.xpdfreader.com/) within a Docker container.

## User Guide

First you need to get set up with [Docker](https://www.docker.com/get-started)

Put your PDF files in the `/pdf` folder.

From this project directory run:

```shell
docker compose run app
```

Then in the `/txt` folder you'll find a `.txt` file corresponding to each PDF you added.