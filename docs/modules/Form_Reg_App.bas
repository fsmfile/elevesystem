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






'
V
a
r
i
a
v
i
e
s
 
p
a
r
a
 
c
r
i
p
t
o
g
r
a
f
i
a



'
P
r
i
v
a
t
e
 
C
o
n
s
t
 
v
a
r
A
p
p
I
 
=
 
"
D
e
v
e
l
o
p
e
r
s
 
B
y
"
 
 
 
 
'
N
ã
o
 
p
o
d
e
 
c
o
n
t
e
r
 
n
u
m
e
r
o
s
,
 
s
o
m
e
n
t
e
 
l
e
t
r
a
s



'
P
r
i
v
a
t
e
 
C
o
n
s
t
 
v
a
r
A
p
p
F
 
=
 
"
K
a
r
t
o
f
f
e
l
"
 
 
 
 
'
N
ã
o
 
p
o
d
e
 
c
o
n
t
e
r
 
n
u
m
e
r
o
s
,
 
s
o
m
e
n
t
e
 
l
e
t
r
a
s












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
n
s
u
l
t
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






R
e
n
o
v
a
r
L
i
c
e
n
c
a






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
 
s
a
i
r
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
 
+
 
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



 
 
 
 
D
o
C
m
d
.
Q
u
i
t



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
 
R
e
n
o
v
a
r
L
i
c
e
n
c
a
(
)






M
s
g
B
o
x
 
"
D
Ê
 
O
K
 
N
E
S
T
A
 
J
A
N
E
L
A
 
E
 
A
G
U
A
R
D
E
 
A
 
C
O
N
F
I
R
M
A
Ç
Ã
O
 
D
O
 
E
N
V
I
O
 
D
O
S
 
D
A
D
O
S
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



F
o
r
m
s
!
r
e
g
_
a
p
p
!
C
o
n
s
u
l
t
a
r
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



F
o
r
m
s
!
r
e
g
_
a
p
p
!
F
e
c
h
a
r
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e






D
o
C
m
d
.
O
u
t
p
u
t
T
o
 
a
c
O
u
t
p
u
t
T
a
b
l
e
,
 
"
t
b
l
_
c
a
d
_
l
o
j
a
s
"
,
 
a
c
F
o
r
m
a
t
X
L
S
,
 
"
C
:
\
w
i
n
d
o
w
s
\
t
e
m
p
\
d
a
d
o
s
_
t
m
p
.
x
l
s
"



'
D
o
C
m
d
.
O
u
t
p
u
t
T
o
 
a
c
O
u
t
p
u
t
T
a
b
l
e
,
 
"
r
e
g
_
a
p
p
"
,
 
a
c
F
o
r
m
a
t
X
L
S
,
 
"
C
:
\
t
e
m
p
\
R
e
g
_
A
p
p
.
x
l
s
"



C
a
l
l
 
E
n
v
i
a
r
D
a
d
o
s






E
n
d
 
S
u
b