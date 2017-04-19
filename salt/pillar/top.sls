base:
  "*":
    - users
  "dev*":
    - consul.dev
    - apache
    - django
  "jenkins*":
    - consul.jenkins
    - jenkins
