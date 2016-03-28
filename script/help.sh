echo "
  All tasks can be invoked using make or bash scripts:
  make TASK        [ make build ]
  ./script/TASK.sh [ ./script/build.sh ]

  Tasks:

  build    - Build docker container
  clean    - Remove docker containers and images
  devshell - Get a shell inside the container
  run      - Run the docker container
  test     - Run Test Anything Protol tests.
"
