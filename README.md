# Cupcake �

A simple **CLI app in Podman**.  
This was my learning project to build and run a containerized application with **Podman** using `ENTRYPOINT` and `CMD`.

The goal was starting to use Podman with a simple CLI script caleed cupcake.
(why cupdcake? Because I like it.)

---

## Features
- Prints a custom message (default: `"Hello from Podman!"`)
- Demonstrates **ENTRYPOINT vs CMD**
- Built on a minimal Alpine Linux image (~7 MB)
- Shows how to version/tag images (e.g. `cupcake:latest`, `cupcake:v2`)
- Teaches cleanup (`podman rm`, `podman image prune`)

---

## Usage

### 1. Build the image
```bash
podman build -t cupcake:latest .
```

### 2.Run with default message.
```bash
podman run --rm cupcake
```
### Output:
```bash
Hello from Podman!
I like cupcake
```


### 3. Run with custom message
```bash
podman run --rm cupcake "Hello Cupcake!"
```
### Output:
```bash
Hello from Cupcake!
I like cupcake
```

## Why this project?
-Practice with Podman basics: images, containers, tagging, cleanup
-Portfolio demo for container fundamentals
-CLI-style app (no webserver), lightweight and easy to share
-Demonstrates understanding of container best practices (rootless, tagging, cleanup)

## How to clen up images:
### List all images:
```bash
podman images
```
### Remove unused images:
```bash
podman image prune -a
```
### Remove stopped containers:
```bash
podman rm -a
```