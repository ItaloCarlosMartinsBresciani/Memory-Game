loadn r0, #2
loadn r1, #3
add r0, r0, r1
loadn r1, #8
cmp r0, r1
jne sai
loadn r0, #0
loadn r1, #'A'
outchar r1, r0
sai:
halt
