import subprocess

command = ['/usr/bin/checkupdates']
p = subprocess.Popen(command, stdout=subprocess.PIPE)
text = p.stdout.read()
updatelist = text.splitlines()
nr_updates = len(updatelist)

print("" + " " + str(nr_updates))
