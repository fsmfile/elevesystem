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



O
p
t
i
o
n
 
E
x
p
l
i
c
i
t






P
r
i
v
a
t
e
 
a
c
a
o
P
o
s
O
p
e
n
 
A
s
 
S
t
r
i
n
g



P
r
i
v
a
t
e
 
a
c
a
o
P
o
s
T
i
m
e
r
 
A
s
 
S
t
r
i
n
g









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



 
 
 
 
D
i
m
 
e
x
t
 
A
s
 
S
t
r
i
n
g



 
 
 
 
e
x
t
 
=
 
L
C
a
s
e
$
(
M
i
d
$
(
C
u
r
r
e
n
t
P
r
o
j
e
c
t
.
F
u
l
l
N
a
m
e
,
 
I
n
S
t
r
R
e
v
(
C
u
r
r
e
n
t
P
r
o
j
e
c
t
.
F
u
l
l
N
a
m
e
,
 
"
.
"
)
 
+
 
1
)
)



 
 
 
 



 
 
 
 
M
e
.
V
i
s
i
b
l
e
 
=
 
F
a
l
s
e



 
 
 
 
g
D
e
s
b
l
o
q
u
e
i
o
O
K
 
=
 
F
a
l
s
e



 
 
 
 
D
i
s
a
b
l
e
B
y
p
a
s
s
K
e
y
 
 
 
 
 
 
 
 
 
 
 
'
 
g
a
r
a
n
t
e
 
q
u
e
 
S
H
I
F
T
 
n
ã
o
 
p
u
l
e
 
o
 
S
t
a
r
t
e
r






 
 
 
 
S
e
l
e
c
t
 
C
a
s
e
 
e
x
t



 
 
 
 
 
 
C
a
s
e
 
"
a
c
c
d
b
"



 
 
 
 
 
 
 
 
'
 
=
=
=
 
s
ó
 
s
e
n
h
a
 
e
 
r
e
s
t
o
r
e
 
=
=
=



 
 
 
 
 
 
 
 
D
o
C
m
d
.
O
p
e
n
F
o
r
m
 
"
f
r
m
_
A
s
k
P
a
s
s
w
o
r
d
"
,
 
,
 
,
 
,
 
,
 
a
c
D
i
a
l
o
g



 
 
 
 
 
 
 
 
a
c
a
o
P
o
s
T
i
m
e
r
 
=
 
I
I
f
(
g
D
e
s
b
l
o
q
u
e
i
o
O
K
,
 
"
r
e
s
t
o
r
e
"
,
 
"
l
o
c
k
d
o
w
n
"
)



 
 
 
 
 
 
 
 



 
 
 
 
 
 
C
a
s
e
 
"
f
l
m
d
e
v
"
,
 
"
a
c
c
d
e
"



 
 
 
 
 
 
 
 
'
 
=
=
=
 
Q
A
 
/
 
P
R
O
D
:
 
b
l
o
q
u
e
i
a
 
s
e
m
 
s
e
n
h
a
 
=
=
=



 
 
 
 
 
 
 
 
a
c
a
o
P
o
s
T
i
m
e
r
 
=
 
"
l
o
c
k
d
o
w
n
"



 
 
 
 
 
 
 
 



 
 
 
 
 
 
C
a
s
e
 
E
l
s
e



 
 
 
 
 
 
 
 
a
c
a
o
P
o
s
T
i
m
e
r
 
=
 
"
l
o
c
k
d
o
w
n
"



 
 
 
 
E
n
d
 
S
e
l
e
c
t






 
 
 
 
M
e
.
T
i
m
e
r
I
n
t
e
r
v
a
l
 
=
 
1
0
0



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
T
i
m
e
r
(
)



 
 
 
 
M
e
.
T
i
m
e
r
I
n
t
e
r
v
a
l
 
=
 
0






 
 
 
 
S
e
l
e
c
t
 
C
a
s
e
 
a
c
a
o
P
o
s
T
i
m
e
r



 
 
 
 
 
 
 
 
C
a
s
e
 
"
r
e
s
t
o
r
e
"



 
 
 
 
 
 
 
 
 
 
 
 
R
e
s
t
o
r
e
U
I
 
 
 
 
 
 
 
 
 
 
'
 
r
e
a
t
i
v
a
 
m
e
n
u
s
,
 
p
a
i
n
e
l
 
e
 
S
h
i
f
t



 
 
 
 
 
 
 
 
C
a
s
e
 
"
l
o
c
k
d
o
w
n
"



 
 
 
 
 
 
 
 
 
 
 
 
L
o
c
k
d
o
w
n
U
I
 
 
 
 
 
 
 
 
 
'
 
d
e
i
x
a
 
t
u
d
o
 
b
l
o
q
u
e
a
d
o



 
 
 
 
E
n
d
 
S
e
l
e
c
t






 
 
 
 
'
 
4
)
 
A
b
r
e
 
o
 
f
o
r
m
 
p
r
i
n
c
i
p
a
l
 
e
 
e
n
c
e
r
r
a
 
e
s
t
e
 
S
t
a
r
t
e
r



 
 
 
 
D
o
C
m
d
.
O
p
e
n
F
o
r
m
 
"
c
h
k
_
S
t
a
r
t
"



 
 
 
 
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
























'
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-



'
 
 
C
a
i
x
a
 
d
e
 
s
e
n
h
a
 
m
o
d
a
l
 
(
r
e
t
o
r
n
a
 
T
r
u
e
 
s
e
 
c
o
r
r
e
t
a
)



'
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-



P
r
i
v
a
t
e
 
F
u
n
c
t
i
o
n
 
P
e
d
i
r
S
e
n
h
a
D
e
s
e
n
v
o
l
v
e
d
o
r
(
)
 
A
s
 
B
o
o
l
e
a
n



 
 
 
 
g
D
e
s
b
l
o
q
u
e
i
o
O
K
 
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
p
e
n
F
o
r
m
 
"
f
r
m
_
A
s
k
P
a
s
s
w
o
r
d
"
,
 
,
 
,
 
,
 
,
 
a
c
D
i
a
l
o
g



 
 
 
 
P
e
d
i
r
S
e
n
h
a
D
e
s
e
n
v
o
l
v
e
d
o
r
 
=
 
g
D
e
s
b
l
o
q
u
e
i
o
O
K



E
n
d
 
F
u
n
c
t
i
o
n





