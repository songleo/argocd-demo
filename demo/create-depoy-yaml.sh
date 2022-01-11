#!/bin/sh

cat << EOF > demo.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: ssli
  labels:
    app: ssli
spec:
  replicas: 2
  selector:
    matchLabels:
      app: ssli
  template:
    metadata:
      labels:
        app: ssli
    spec:
      containers:
      - name: ssli
        image: quay.io/songleo/hostname
        imagePullPolicy: Always
        env:
        - name: VERSION
          value: "v1.0"
        ports:
        - containerPort: 8080
EOF
