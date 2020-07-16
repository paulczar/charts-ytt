# ytt as helm chart example

This is an example combo helm / ytt chart

Initially it was to prove out that I could use `helm package` on a directory containing `ytt` files, which it can (provided you have a `chart.yaml` file).

```
helm package . -d temp/
Successfully packaged chart and saved it to: temp/cf4k8s-extras-1.0.0.tgz
```

You can use helm with the post-render hook to template

```
helm template . --post-renderer ./ytt/post-renderer.sh
```

or install it

```
helm install example . --post-renderer ./ytt/post-renderer.sh
```

or you could just use helm to package/share and run ytt directly:

```
ytt -f ytt -f values.yaml | kapp deploy -a example -f -
```


If you see the following error, you probably didn't use the post-renderer flag:

```
Error: unable to build kubernetes objects from release manifest: error validating "": error validating data: [apiVersion not set, kind not set]
```