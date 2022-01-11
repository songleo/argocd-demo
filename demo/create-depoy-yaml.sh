#!/bin/sh

cat << EOF > demo.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: demo
  labels:
    app: demo
spec:
  replicas: 2
  selector:
    matchLabels:
      app: demo
  template:
    metadata:
      labels:
        app: demo
    spec:
      containers:
      - name: demo
        image: quay.io/songleo/hostname
        imagePullPolicy: Always
        env:
        - name: VERSION
          value: "v1.0"
        ports:
        - containerPort: 8080
EOF
