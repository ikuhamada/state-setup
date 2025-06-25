This is a part of the STATE example for the in-house hands-on tutorial.

To login the system type:

```bash
ssh -Y [login_name]@133.1.116.161
```
or
```bash
ssh -Y -l [login_name] 133.1.116.161
```

To set up the environment for the hands-on tutorial, execute the following command in the home directory:

```bash
git clone -b in-house https://github.com/ikuhamada/state-setup.git STATE
```

to obtain the ``STATE`` directory. Then, go to the ``STATE`` directory

```bash
cd STATE
```
and run ``state-setup.sh`` as

```bash
./state-setup.sh
```

One can find the ``examples`` directory containing the examples used in the hands-on. The source files can be found in ``src`` and the pseudopotetials can be found in ``gncpp``.

