O
p
t
i
o
n
 
C
o
m
p
a
r
e
 
D
a
t
a
b
a
s
e






P
r
i
v
a
t
e
 
S
u
b
 
c
a
r
r
e
g
a
r
_
C
l
i
c
k
(
)






 
 
 
 
C
a
l
l
 
L
i
s
t
a
_
L
o
a
d
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
o
r
d
e
r
 
b
y
 
N
o
m
e
P
a
c
i
e
n
t
e
"
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)






E
n
d
 
S
u
b






P
r
i
v
a
t
e
 
S
u
b
 
C
o
m
a
n
d
o
2
7
_
C
l
i
c
k
(
)









 
 
 
 
I
f
 
I
s
N
u
l
l
(
I
D
)
 
T
h
e
n






 
 
 
 
 
 
 
 
C
a
l
l
 
A
d
d
_
M
y
S
Q
L
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
"
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
s
t
a
_
L
o
a
d
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
o
r
d
e
r
 
b
y
 
N
o
m
e
P
a
c
i
e
n
t
e
"
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
m
p
a
_
C
a
m
p
o
s
(
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
D
a
d
o
s
 
s
a
l
v
o
s
 
c
o
m
 
s
u
c
e
s
s
o
.
"






 
 
 
 
E
l
s
e






 
 
 
 
 
 
 
 
C
a
l
l
 
U
p
d
a
d
e
_
M
y
S
Q
L
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
w
h
e
r
e
 
"
 
&
 
"
 
I
d
=
"
 
&
 
M
e
.
L
i
s
t
a
.
C
o
l
u
m
n
(
0
)
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
s
t
a
_
L
o
a
d
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
o
r
d
e
r
 
b
y
 
N
o
m
e
P
a
c
i
e
n
t
e
"
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
m
p
a
_
C
a
m
p
o
s
(
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
D
a
d
o
s
 
a
t
u
a
l
i
z
a
d
o
s
 
c
o
m
 
s
u
c
e
s
s
o
.
"






 
 
 
 
E
n
d
 
I
f












E
n
d
 
S
u
b






P
r
i
v
a
t
e
 
S
u
b
 
F
o
r
m
_
O
p
e
n
(
C
a
n
c
e
l
 
A
s
 
I
n
t
e
g
e
r
)



C
a
l
l
 
c
a
r
r
e
g
a
r
_
C
l
i
c
k



E
n
d
 
S
u
b






P
r
i
v
a
t
e
 
S
u
b
 
L
i
s
t
a
_
C
l
i
c
k
(
)






 
 
 
 
C
a
l
l
 
L
i
s
t
a
_
S
e
l
e
c
t
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
w
h
e
r
e
"
 
&
 
"
 
I
d
=
"
 
&
 
M
e
.
L
i
s
t
a
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)






E
n
d
 
S
u
b



P
r
i
v
a
t
e
 
S
u
b
 
E
x
c
l
u
i
r
_
C
l
i
c
k
(
)






 
 
 
 
D
i
m
 
R
e
s
p



 
 
 
 
R
e
s
p
 
=
 
M
s
g
B
o
x
(
"
D
e
s
e
j
a
 
e
x
c
l
u
i
r
 
"
 
&
 
N
o
m
e
P
a
c
i
e
n
t
e
 
&
 
"
?
"
,
 
v
b
Q
u
e
s
t
i
o
n
 
+
 
v
b
Y
e
s
N
o
)






 
 
 
 
I
f
 
R
e
s
p
 
=
 
6
 
T
h
e
n






 
 
 
 
 
 
 
 
C
a
l
l
 
D
e
l
e
t
e
_
M
y
S
Q
L
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
w
h
e
r
e
"
 
&
 
"
 
I
d
=
"
 
&
 
M
e
.
L
i
s
t
a
.
C
o
l
u
m
n
(
0
)
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
s
t
a
_
L
o
a
d
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
o
r
d
e
r
 
b
y
 
N
o
m
e
P
a
c
i
e
n
t
e
"
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
m
p
a
_
C
a
m
p
o
s
(
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
E
x
c
l
u
s
ã
o
 
r
e
a
l
i
z
a
 
c
o
m
 
s
u
c
e
s
s
o
.
"
,
 
v
b
I
n
f
o
r
m
a
t
i
o
n



 
 
 
 
E
n
d
 
I
f






E
n
d
 
S
u
b






P
r
i
v
a
t
e
 
S
u
b
 
F
e
c
h
a
r
_
C
l
i
c
k
(
)



 
 
 
 
D
o
C
m
d
.
C
l
o
s
e
 
a
c
F
o
r
m
,
 
M
e
.
F
o
r
m
.
N
a
m
e



E
n
d
 
S
u
b






P
r
i
v
a
t
e
 
S
u
b
 
N
o
v
o
_
C
l
i
c
k
(
)






 
 
 
 
L
i
m
p
a
_
C
a
m
p
o
s
 
(
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
N
o
m
e
P
a
c
i
e
n
t
e
.
S
e
t
F
o
c
u
s






E
n
d
 
S
u
b






P
r
i
v
a
t
e
 
S
u
b
 
S
a
l
v
a
r
_
C
l
i
c
k
(
)









 
 
 
 
I
f
 
I
s
N
u
l
l
(
I
D
)
 
T
h
e
n






 
 
 
 
 
 
 
 
C
a
l
l
 
A
d
d
_
M
y
S
Q
L
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
"
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
s
t
a
_
L
o
a
d
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
o
r
d
e
r
 
b
y
 
N
o
m
e
P
a
c
i
e
n
t
e
"
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
m
p
a
_
C
a
m
p
o
s
(
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
D
a
d
o
s
 
s
a
l
v
o
s
 
c
o
m
 
s
u
c
e
s
s
o
.
"






 
 
 
 
E
l
s
e






 
 
 
 
 
 
 
 
C
a
l
l
 
U
p
d
a
d
e
_
M
y
S
Q
L
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
w
h
e
r
e
 
"
 
&
 
"
 
I
d
=
"
 
&
 
M
e
.
L
i
s
t
a
.
C
o
l
u
m
n
(
0
)
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
s
t
a
_
L
o
a
d
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
p
a
c
i
e
n
t
e
s
 
o
r
d
e
r
 
b
y
 
N
o
m
e
P
a
c
i
e
n
t
e
"
,
 
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
C
a
l
l
 
L
i
m
p
a
_
C
a
m
p
o
s
(
M
e
.
F
o
r
m
.
N
a
m
e
)



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
D
a
d
o
s
 
a
t
u
a
l
i
z
a
d
o
s
 
c
o
m
 
s
u
c
e
s
s
o
.
"






 
 
 
 
E
n
d
 
I
f






E
n
d
 
S
u
b