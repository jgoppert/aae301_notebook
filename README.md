# AAE 301 Class Notebook

Using this notebook is not required, it is only used for in class examples.

## Getting Started
* [Installing Python](https://www.youtube.com/watch?v=YJC6ldI3hWk)
* [Github Crash Course](https://www.youtube.com/watch?v=SWYqp7iY_Tc)
* [Jupyter Notebooks](https://www.youtube.com/watch?v=HW29067qVWk)
* [JupyterLab](https://www.youtube.com/watch?v=ctOM-Gza04Y)

## Install Anaconda

* [Download](https://www.anaconda.com/download/#linux)

If you are using [ROS](http://www.ros.org/) with linux, I would recommend not to install anaconda to your system path, as it will override the python version that ROS expects. Instead, create a symbolic link to activate in your ~/bin folder, which automatically gets added to your path if it exists:

```bash
mkdir -p ~/bin
cd ~/bin
ln -s ~/anaconda3/bin/activate activate
```

Then log out and log back in and now activate should be on your path.

## Environment Installation

Use git to download this notebook.

```bash
mkdir -p ~/git
cd ~/git
git clone git@github.com:jgoppert/aae301_notebook
```

Create your environment from the environment.yml file.

```bash
cd ~/aae301_notebook
conda env create -f environment.yml
```

## Start JupyterLab

```bash
. activate aae301
cd ~/aae301_notebook
jupyter lab
```
