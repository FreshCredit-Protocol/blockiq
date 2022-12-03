apiVersion: apps/v1
kind: Deployment
metadata:
  labels:
    app.kubernetes.io/name: blockiq
  name: blockiq
spec:
  replicas: 2
  selector:
    matchLabels:
      app.kubernetes.io/name: blockiq
  template:
    metadata:
      labels:
        app.kubernetes.io/name: blockiq
    spec:
      containers:
        - name: blockiq
          image: 293637174735.dkr.ecr.us-east-1.amazonaws.com/blockiq:latest
          ports:
            - containerPort: 8080
              protocol: TCP
          resources: {}
          terminationMessagePath: /dev/termination-log
          terminationMessagePolicy: File
          imagePullPolicy: Always
         
      restartPolicy: Always
      terminationGracePeriodSeconds: 30
      dnsPolicy: ClusterFirst
      securityContext: {}
      schedulerName: default-scheduler
