base:
  "*":
    - users
  "dev*":
    - consul.dev
    - apache
  "jenkins*":
    - consul.jenkins
