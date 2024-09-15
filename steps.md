1. Installation and Setup
   1. Install Docker: https://docs.docker.com/engine/install/
   2. Install kubernetes (kubectl): https://kubernetes.io/docs/tasks/tools/
   3. Install minikube: https://minikube.sigs.k8s.io/docs/start
   4. Run `minikube start` to start a local cluster (You have to run the docker desktop (if windows) or start docker (if linux) )
   5. Install k9s: https://github.com/derailed/k9s
   6. Install python: https://www.python.org/downloads/
2. Docker-compose:
   1. Add the mysql container
   2. Add phpmyadmin to administrate the authdb
3. Auth service
   1. Navigate to the src/auth-service directory
   2. Create a virtual env in python using `python -m venv venv`
   3. Activate the virtual environment using `source ./venv/bin/activate` or `.\venv\Scripts\Activate` if you're on windows.
   4. Create a new file called `server.py`, and populate it.
   5. Create a `init.sql` file to initiate the DB and it's users, and populate it.
   6. Use the `pip install -r requirements.txt` command to install necessary dependencies from the `requirements.txt` file.
   7. Create the `Dockerfile` for the auth-service, and populate it.
   8. minikube service rabbitmq --url