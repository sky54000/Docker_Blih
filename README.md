# Docker blih Epitech.

__Summary__:

- [Description](#description)
- [Configuration](#configuration)
- [Install](#install)
- [Create](#create)
- [Clone](#clone)
- [Push](#push)
- [Documentation](#documentation)

## Description

This project goal is to simplify the repository creation and file commits/push with blih from EPITECH.

The project builds and runs an Ubuntu docker with blih, then blih create your repository.
All file in `./project` are moved into this new repository, to finally make a git commit and git push in it.
The commands git add and git commit are not handle by the script, you have to it yourself and then you can use the push command.

The project give read permisson to 'ramassage-tek'.

To be sure that your deliver has been done nicely try to use the clone command. If you see your files in the Cloned-volume folder, then the delivery encontered no problems.

## Configuration

- Requirements:
  - [Docker](https://www.docker.com)
  - [Docker-compose](https://docs.docker.com/compose/)


- `docker-compose.yml`
```
  EPITECH_MAIL: 'prenom.nom@epitech.eu'                           # Epitech mail
  EPITECH_PASSWORD: 'password'                                    # Epitech password
  REPO_NAME: 'stageTEK5_2018_rapport'                             # Repository name
  EPITECH_LOGIN: 'le-bar_q'                                       # Epitech login (prenom[:5]_nom[:1])
  COMMIT_MESSAGE: "Mon premier docker commit <3 amour sur vous."  # Commit message
```
- `project`

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

## Create

This command creates the repository with `blih` and pushes all files in `project/`.

__Run :__

>
> The password Epitech is ask, You must escaping special char 2 time.
>
>   ```ex:
>      password: &*@?
>      to
>      password: \\&\\*\\@\\?```
>

```
make ; make logs
```
> more informations about Makefile commands in the [documentation section](#documentation)

## Clone

This command clone the repository from Epitech, then your cloned repository is located into Cloned-volume.

__Run :__

>
> The password Epitech is ask, You must escaping special char 2 time.
>
>   ```ex:
>      password: &*@?
>      to
>      password: \\&\\*\\@\\?```
>

```
make clone; make logs
```
> more informations about Makefile commands in the [documentation section](#documentation)

## Push

This command push all files in `project` to Epitech.

Before using this command clone your repository move the `.git` to your actual `project`.
Commands `git add` and `git commit` are not handle by the script. You have to resolve conflicts and then you can add all the project (with `.git`) to the folder `project/`.

you can now run the push.

__Run :__

>
> The password Epitech is ask, You must escaping special char 2 time.
>
>   ```ex:
>      password: &*@?
>      to
>      password: \\&\\*\\@\\?```
>

```
make push; make logs
```
> more informations about Makefile commands in the [documentation section](#documentation)

## Documentation

_Makefile commands available_:

| **commands name**  | **description**                                                      |
|:------------------:|:-------------------------------------------------------------------- |
|       `make`       | 1. down service                                                      |
|                    | 2. build service (create-repository)                                 |
|                    | 3. run service (create-repository)                                   |
|                    |                                                                      |
|    `make build`    | build service (create-repository)                                    |
|                    |                                                                      |
|     `make up`      | run project (create-repository)                                      |
|                    |                                                                      |
|    `make down`     | down project                                                         |
|                    |                                                                      |
|    `make clone`    | 1. down service                                                      |
|                    | 2. build service (clone)                                             |
|                    | 3. run service (clone)                                               |
|                    |                                                                      |
| `make build_clone` | build service (clone)                                                |
|                    |                                                                      |
|  `make up_clone`   | run service (clone)                                                  |
|                    |                                                                      |
|    `make push`     | 1. down service                                                      |
|                    | 2. build service (push)                                              |
|                    | 3. run service (push)                                                |
|                    |                                                                      |
| `make build_push`  | build service (push)                                                 |
|                    |                                                                      |
|   `make up_push`   | run service (push)                                                   |
|                    |                                                                      |
|     `make ps`      | list container                                                       |
|                    |                                                                      |
|    `make logs`     | display all platform logs                                            |
|                    |                                                                      |
|   `set_password`   | Set password into the `docker-compose.yml` during the execution time |
|                    |                                                                      |
|  `reset_password`  | Reset the password in the `docker-compose.yml` after execution.      |

## Reference

- [Docker hub Ubuntu](https://hub.docker.com/_/ubuntu/)
- [Epitech website](http://www.epitech.eu)
- [Docker](https://www.docker.com)
- [Docker-compose](https://docs.docker.com/compose/)

## Legals
We maked this project to simplify the task of EPITECH students, but they are
responsible of what they submit to the school. Consequently we cannot be liable if
they encounters any problems using this repository.
