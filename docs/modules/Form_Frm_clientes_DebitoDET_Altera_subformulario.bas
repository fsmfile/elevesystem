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
 
Q
u
i
t
a
r
_
B
e
f
o
r
e
U
p
d
a
t
e
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
 
C
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
 
p
a
r
c
e
l
a
?
"
,
 
v
b
O
K
C
a
n
c
e
l
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
O
K
 
T
h
e
n



'
 
 
 
 
V
a
l
o
r
P
a
g
o
 
=
 
V
a
l
o
r
P
a
r
c



'
 
 
 
 
D
t
P
a
g
a
m
e
n
t
o
 
=
 
D
a
t
e



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
V
a
l
o
r
P
a
g
o
 
=
 
"
"



'
D
t
P
a
g
a
m
e
n
t
o
 
=
 
"
"



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



I
f
 
V
a
l
o
r
P
a
g
o
 
=
 
V
a
l
o
r
P
a
r
c
 
T
h
e
n



D
t
P
a
g
a
m
e
n
t
o
 
=
 
D
a
t
e



q
u
i
t
a
r
 
=
 
T
r
u
e



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