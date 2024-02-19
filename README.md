This is a part of  the STATE example for the CMD workshop.

To set up the environment for the hands-on in the CMD workshop, execute the following command in the home directory:

```bash
git clone -b cmd_sc https://github.com/ikuhamada/state-setup.git STATE
```

to obtain the ``STATE directory``. Then, go to the ``STATE`` directory

```bash
cd STATE
```

and run ``state-setup.sh``

```bash
./state-setup.sh
```

To make sure the command search path is set, let us do the following:

```bash
source ~/.bashrc
```

One can find the ``examples`` directory containing the examples used in the hands-on. The source files can be found in ``src`` and the pseudopotetials can be found in ``gncpp``.

Then let us build the STATE executable. Go to the ``src`` directory

```bash
cd src/state/src
```

There type the following

```bash
ln -s ../arch/make.arch.intel_ohtaka_scalapack make.arch
```

and then make

```bash
make > make.log 2>&1&
```

If the STATE is build successfully, let us move to the ``util`` directory.

```bash
cd ../util
```

and build the programs

```bash
make > make.log 2>&1&
```

and you are all set!!!

If you cannot find utility programs such as ``chkinpf``, please execute the following

```bash
source ~/.bashrc
```

