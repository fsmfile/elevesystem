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
 
q
u
i
t
a
r
_
C
o
n
t
a
s
R
e
c
e
b
e
r
D
e
t
_
A
f
t
e
r
U
p
d
a
t
e
(
)






'
I
f
 
M
e
.
q
u
i
t
a
r
_
C
o
n
t
a
s
R
e
c
e
b
e
r
D
e
t
 
=
 
-
1
 
T
h
e
n






'
 
 
 
 
I
f
 
M
s
g
B
o
x
(
"
T
e
m
 
c
e
r
t
e
z
a
 
q
u
e
 
d
e
s
e
j
a
 
q
u
i
t
a
r
 
e
s
t
a
 
c
o
n
t
a
?
"
,
 
v
b
Y
e
s
N
o
,
 
"
E
l
e
v
e
 
S
y
s
t
e
m
"
)
 
=
 
v
b
Y
e
s
 
T
h
e
n



'
 
 
 
 
M
e
.
V
a
l
o
r
P
a
g
o
_
C
o
n
t
a
s
P
a
g
a
r
D
e
t
 
=
 
(
V
a
l
o
r
P
a
r
c
_
C
o
n
t
a
s
P
a
g
a
r
D
E
T
 
+
 
J
u
r
o
s
_
C
o
n
t
a
s
P
a
g
a
r
D
E
T
)
 
-
 
D
e
s
c
o
n
t
o
_
C
o
n
t
a
s
P
a
g
a
r
D
E
T



'
 
 
 
 
M
e
.
D
a
t
a
P
a
g
_
C
o
n
t
a
s
P
a
g
a
r
D
E
T
 
=
 
D
a
t
e



'
 
 
 
 
E
l
s
e



'
 
 
 
 
M
e
.
q
u
i
t
a
r
_
C
o
n
t
a
s
R
e
c
e
b
e
r
D
e
t
 
=
 
0



 
'
 
 
 
M
e
.
V
a
l
o
r
P
a
g
o
_
C
o
n
t
a
s
P
a
g
a
r
D
e
t
 
=
 
0



 
'
 
 
 
M
e
.
D
a
t
a
P
a
g
_
C
o
n
t
a
s
P
a
g
a
r
D
E
T
 
=
 
N
u
l
l



 
'
 
 
 
E
n
d
 
I
f



 
 
 
 



'
E
l
s
e






'
M
e
.
q
u
i
t
a
r
_
C
o
n
t
a
s
R
e
c
e
b
e
r
D
e
t
 
=
 
0



'
M
e
.
V
a
l
o
r
P
a
g
o
_
C
o
n
t
a
s
P
a
g
a
r
D
e
t
 
=
 
0



'
M
e
.
D
a
t
a
P
a
g
_
C
o
n
t
a
s
P
a
g
a
r
D
E
T
 
=
 
N
u
l
l






'
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