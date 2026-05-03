import subprocess
import time

inputs = "master\ntaylor-project\nLeandro Estrada\nhttps://github.com/Leandr0ER/taylor-project\nhttps://Leandr0ER.github.io/taylor-project\nhttps://Leandr0ER.github.io/taylor-project/docs\nreport\na4paper\ny\n3\n0\n0\ny\ny\n"

process = subprocess.Popen(['leanblueprint', 'new'], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True)

try:
    stdout, stderr = process.communicate(input=inputs, timeout=60)
    print("STDOUT:")
    print(stdout)
    print("STDERR:")
    print(stderr)
except subprocess.TimeoutExpired:
    process.kill()
    stdout, stderr = process.communicate()
    print("TIMEOUT EXPIRED")
    print("STDOUT SO FAR:")
    print(stdout)
    print("STDERR SO FAR:")
    print(stderr)
