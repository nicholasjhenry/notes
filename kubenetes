    minikube version
    minikube start

    # check that kubectl is configured to talk to your cluster
    kubectl version
    kubectl cluster-info
    # kubectl action (create, describe...) resource (node, container...)

    # example deployment: `kubernetes-bootcamp`

    # list resources (nodes)
    kubectl get nodes
    # show detailed information about a resource
    kubectl describe ...
    #  print the logs from a container in a pod
    kubectl logs
    #  execute a command on a container in a pod
    kubectl exec ...

    # create a deployment
    kubectl create deployment kubernetes-bootcamp --image=gcr.io/google-samples/kubernetes-bootcamp:v1
    kubectl get deployments

    # proxy to the cluster
    kubectl proxy
    curl http://localhost:8001/version

    # podname
    export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
    curl http://localhost:8001/api/v1/namespaces/default/pods/$POD_NAME/proxy/
    kubectl logs $POD_NAME
    kubectl exec $POD_NAME env
    kubectl exec -ti $POD_NAME bash
    kubectl exec -ti $POD_NAME bash
    curl localhost:8080

    # expose a service
    kubectl expose deployment/kubernetes-bootcamp --type="NodePort" --port 8080
    kubectl describe services/kubernetes-bootcamp

    # expose the node port
    export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')

    curl $(minikube ip):$NODE_PORT

    kubectl describe deployment
    kubectl get pods -l run=kubernetes-bootcamp
    kubectl get services -l run=kubernetes-bootcamp

    # label
    export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')
    kubectl label pod $POD_NAME app=v1
    kubectl describe pods $POD_NAME
    # query with label
     kubectl get pods -l app=v1

     kubectl delete service -l run=kubernetes-bootcamp

     # 5. Scale your app

     # get the replica set
     kubectl get rs
     # scale
     kubectl scale deployments/kubernetes-bootcamp --replicas=4
     kubectl get pods -o wide
     kubectl describe deployments/kubernetes-bootcamp

     export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')
    curl $(minikube ip):$NODE_PORT

    # 6. Update your app

    kubectl set image deployments/kubernetes-bootcamp kubernetes-bootcamp=jocatalin/kubernetes-bootcamp:v2
    kubectl rollout undo deployments/kubernetes-bootcamp')')')')
