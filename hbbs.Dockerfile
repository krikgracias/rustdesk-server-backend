FROM rustdesk/rustdesk-server:latest

CMD ["hbbs", "-r", "desk.captainkirk.dev:21117", "-k", "_"]
