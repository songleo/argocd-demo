#!/bin/sh

cat << EOF > demo.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: demo1234
  labels:
    app: demo1234
spec:
  replicas: 2
  selector:
    matchLabels:
      app: demo1234
  template:
    metadata:
      labels:
        app: demo1234
    spec:
      containers:
      - name: demo1234
        image: quay.io/songleo/hostname
        imagePullPolicy: Always
        env:
        - name: VERSION
          value: "v1.0"
        ports:
        - containerPort: 8080
EOF
