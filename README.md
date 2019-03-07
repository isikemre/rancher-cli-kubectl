# rancher-cli-kubectl
This is image wraps `rancher-cli` and kubectl to use the "rancher kubectl" method without any extras.  
The offical `rancher/cli` image, doesn't have `kubectl` pre-installed. So the `rancher kubectl` method becomes useless.

I solved this problem with a custom Docker image which extends the `rancher/cli` image and installs `kubectl`.  
Now the `rancher kubectl` command works like a charm and you don't need to handle the installation of kubectl by yourself.

Useful for CI/CD's.
 
