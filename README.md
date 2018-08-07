# Docker blih Epitech.

__Summary__:

- [Description](#description)
- [Configuration](#configuration)
- [Install](#install)
- [Documentation](#documentation)

## Description

This project goal is to simplify the repository creation and file commits/push with blih.

The project builds and runs an Ubuntu docker with blih, then blih create your repository.
All file in `./project` are moved into this new repository, to finally make a git commit and git push in it.

For now, it is only able to create the repository and push in it, so if we want to commit, push or clone,
we have to use the command: `git`

The project give read permisson to 'ramassage-tek'.

Please be careful when using this project, after executing it, always verify your submit with `git clone`.

## Configuration

1. `docker-compose.yml`
```
  EPITECH_MAIL: 'prenom.nom@epitech.eu'                           # Epitech mail
  EPITECH_PASSWORD: 'password'                                    # Epitech password
  REPO_NAME: 'stageTEK5_2018_rapport'                             # Repository name
  EPITECH_LOGIN: 'le-bar_q'                                       # Epitech login (prenom[:5]_nom[:1])
  COMMIT_MESSAGE: "Mon premier docker commit <3 amour sur vous."  # Commit message
```
2. `project`

  All file in this folder will be moved into the git repository then push.
  ```
  $ tree -L 2
  .
  ├── packages
  |   └── blih.py
  ├── project
  │   └── stageTEK5_2018_rapport.pdf
  ...
  ```

## Install

Requirements:
- [Docker](https://www.docker.com)
- [Docker-compose](https://docs.docker.com/compose/)

__Run :__

```
make
```

> more informations about Makefile commands in the [documentation section](#documentation)

## Documentation

_Makefile commands available_:

| **commands name** | **description**           |
|:-----------------:|:------------------------- |
|      `make`       | 1. down each service      |
|                   | 2. build basic project    |
|                   | 3. run project            |
|                   |                           |
|  `make build_up`  | 1. build basic project    |
|                   | 2. run project            |
|                   |                           |
|   `make build`    | build basic project.      |
|                   |                           |
|     `make up`     | run project               |
|                   |                           |
|    `make down`    | down project              |
|                   |                           |
|   `make clean`    | 1. down each service      |
|                   | 2. remove volumes         |
|                   |                           |
|     `make ps`     | list container            |
|                   |                           |
|    `make logs`    | display all platform logs |

## Reference

- [Docker hub Ubuntu](https://hub.docker.com/_/ubuntu/)
- [Epitech website](http://www.epitech.eu)
- [Docker](https://www.docker.com)
- [Docker-compose](https://docs.docker.com/compose/)

## Legals
We maked this project to simplify the task of EPITECH students, but they are
responsible of what they submit to the school. Consequently we cannot be liable if
they encounters any problems using this repository.


