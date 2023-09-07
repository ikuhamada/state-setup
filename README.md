This is a part of  the STATE example for the CMD workshop.

To set up the environment for the hands-on in the CMD workshop, execute the following command in the home directory:

```bash
cd $HOME
```

(you don't have to type this command, if you are in the home directory, though) and

```bash
git clone -b cmd_beginner https://github.com/ikuhamada/state-setup.git STATE
```

to obtain the ``STATE directory``. Then, go to the ``STATE`` directory

```bash
cd STATE
```

and run ``state-setup.sh``

```bash
./state-setup.sh
```

One can find the ``examples`` directory containing the examples used in the hands-on. The source files can be found in ``src`` and the pseudopotetials can be found in ``gncpp``.

To make sure the command search path is set, let us do the following:

```bash
source ~/.bashrc
```

