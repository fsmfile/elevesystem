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
 
b
t
n
A
t
u
a
l
i
z
a
r
S
i
s
t
e
m
a
_
C
l
i
c
k
(
)



O
n
 
E
r
r
o
r
 
G
o
T
o
 
E
r
r






I
f
 
D
i
r
(
"
c
:
\
f
l
m
s
i
s
t
e
m
a
s
\
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"
,
 
v
b
A
r
c
h
i
v
e
)
 
=
 
"
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"
 
T
h
e
n



K
i
l
l
 
"
C
:
\
f
l
m
s
i
s
t
e
m
a
s
\
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"



E
n
d
 
I
f









I
f
 
D
i
r
(
"
c
:
\
f
l
m
s
i
s
t
e
m
a
s
\
U
p
d
a
t
e
S
y
s
t
e
m
F
L
M
.
a
c
c
d
e
"
,
 
v
b
A
r
c
h
i
v
e
)
 
=
 
"
U
p
d
a
t
e
S
y
s
t
e
m
F
L
M
.
a
c
c
d
e
"
 
T
h
e
n









v
P
a
t
h
 
=
 
"
c
:
\
f
l
m
s
i
s
t
e
m
a
s
"



v
F
i
l
e
 
=
 
"
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"
 
'
n
o
m
e
 
d
o
 
a
r
q
u
i
v
o
 
a
 
s
e
r
 
b
a
i
x
a
d
o



v
F
T
P
S
e
r
v
 
=
 
"
f
t
p
.
f
l
m
s
i
s
t
e
m
a
s
.
c
o
m
.
b
r
"
 
'
S
e
u
 
s
e
r
v
i
d
o
r






'
M
o
n
t
a
n
d
o
 
o
 
c
o
m
a
n
d
o
 
f
t
p
.
e
x
e



f
N
u
m
 
=
 
F
r
e
e
F
i
l
e
(
)



O
p
e
n
 
v
P
a
t
h
 
&
 
"
\
F
t
p
C
o
m
m
.
t
x
t
"
 
F
o
r
 
O
u
t
p
u
t
 
A
s
 
#
f
N
u
m



P
r
i
n
t
 
#
1
,
 
"
u
s
e
r
 
f
l
m
s
i
s
t
e
m
a
s
"
 
'
U
s
u
á
r
i
o



P
r
i
n
t
 
#
1
,
 
"
f
4
8
6
5
7
5
3
"
 
'
S
e
n
h
a



P
r
i
n
t
 
#
1
,
 
"
c
d
 
w
w
w
"



P
r
i
n
t
 
#
1
,
 
"
c
d
 
n
o
v
a
v
e
r
s
a
o
s
i
s
t
e
m
a
"



P
r
i
n
t
 
#
1
,
 
"
l
c
d
 
"
 
&
 
v
P
a
t
h



'
P
r
i
n
t
 
#
1
,
 
"
p
r
o
m
p
t
"



P
r
i
n
t
 
#
1
,
 
"
g
e
t
 
"
 
&
 
v
F
i
l
e



P
r
i
n
t
 
#
1
,
 
"
c
l
o
s
e
"
 
'
F
e
c
h
a
 
c
o
n
e
x
ã
o



P
r
i
n
t
 
#
1
,
 
"
q
u
i
t
"
 
'
F
e
c
h
a
 
p
r
o
g
r
a
m
a
 
F
T
P



C
l
o
s
e






S
h
e
l
l
 
"
f
t
p
 
-
n
 
-
i
 
-
g
 
-
s
:
"
 
&
 
v
P
a
t
h
 
&
 
"
\
F
t
p
C
o
m
m
.
t
x
t
 
"
 
&
 
v
F
T
P
S
e
r
v
,
 
v
b
N
o
r
m
a
l
N
o
F
o
c
u
s






'
M
s
g
B
o
x
T
i
m
e
r
 
1
,
 
"
V
e
r
i
f
i
c
a
n
d
o
 
s
e
 
h
á
 
a
t
u
a
l
i
z
a
ç
õ
e
s
 
d
i
s
p
o
n
í
v
e
i
s
.
"
 
&
 
v
b
C
r
L
f
 
&
 
"
P
o
r
 
f
a
v
o
r
,
 
a
g
u
a
r
d
e
.
 
E
s
t
a
 
m
e
n
s
a
g
e
m
 
f
e
c
h
a
r
á
 
a
u
t
o
m
a
t
i
c
a
m
e
n
t
e
.
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
,
 
"
A
g
u
a
r
d
e
.
.
.
"






D
i
m
 
V
D
 
A
s
 
B
o
o
l
e
a
n



D
i
m
 
C
o
n
t
 
A
s
 
I
n
t
e
g
e
r



C
o
n
t
 
=
 
1



V
D
 
=
 
D
i
r
(
"
c
:
\
f
l
m
s
i
s
t
e
m
a
s
\
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"
,
 
v
b
A
r
c
h
i
v
e
)
 
=
 
"
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"



D
o
 
W
h
i
l
e
 
V
D
 
=
 
0
 
A
n
d
 
C
o
n
t
 
<
 
1
5
0
0
0



V
D
 
=
 
D
i
r
(
"
c
:
\
f
l
m
s
i
s
t
e
m
a
s
\
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"
,
 
v
b
A
r
c
h
i
v
e
)
 
=
 
"
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"



C
o
n
t
 
=
 
C
o
n
t
 
+
 
1



C
a
l
l
 
L
e
A
r
q
u
i
v
o
T
e
x
t
o



L
o
o
p



 
 
 
 
'
M
s
g
B
o
x
 
T
e
x
t
o
A
r
q
u
i
v
o



 
 
 
 
I
f
 
T
e
x
t
o
A
r
q
u
i
v
o
 
=
 
D
L
a
s
t
(
"
[
v
e
r
s
a
o
s
i
s
t
e
m
a
]
"
,
 
"
t
b
l
_
v
e
r
s
a
o
s
i
s
t
e
m
a
"
)
 
T
h
e
n






 
 
 
 
M
s
g
B
o
x
 
"
N
ã
o
 
h
á
 
a
t
u
a
l
i
z
a
ç
õ
e
s
 
d
i
s
p
o
n
í
v
e
i
s
 
n
o
 
m
o
m
e
n
t
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



 
 
 
 
K
i
l
l
 
"
C
:
\
f
l
m
s
i
s
t
e
m
a
s
\
F
t
p
C
o
m
m
.
t
x
t
"



 
 
 
 
K
i
l
l
 
"
C
:
\
f
l
m
s
i
s
t
e
m
a
s
\
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"



 
 
 
 
E
l
s
e



 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
D
i
r
(
"
c
:
\
f
l
m
s
i
s
t
e
m
a
s
\
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"
,
 
v
b
A
r
c
h
i
v
e
)
 
=
 
"
"
 
T
h
e
n



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
N
ã
o
 
é
 
p
o
s
s
í
v
e
l
 
v
e
r
i
f
i
c
a
r
 
a
s
 
a
t
u
a
l
i
z
a
ç
õ
e
s
.
 
V
e
r
i
f
i
q
u
e
 
s
u
a
 
c
o
n
e
x
ã
o
 
d
e
 
i
n
t
e
r
n
e
t
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



 
 
 
 
 
 
 
 
K
i
l
l
 
"
C
:
\
f
l
m
s
i
s
t
e
m
a
s
\
F
t
p
C
o
m
m
.
t
x
t
"



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
E
l
s
e



 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
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
H
á
 
u
m
a
 
a
t
u
a
l
i
z
a
ç
ã
o
 
d
i
s
p
o
n
í
v
e
l
.
 
D
e
s
e
j
a
 
a
t
u
a
l
i
z
a
r
 
o
 
s
e
u
 
s
i
s
t
e
m
a
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
,
 
"
N
o
v
a
 
V
e
r
s
ã
o
 
d
i
s
p
o
n
í
v
e
l
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



 
 
 
 
 
 
 
 
 
 
 
 
C
a
l
l
 
U
p
d
a
t
e
S
y
s
t
e
m



 
 
 
 
 
 
 
 
 
 
 
 
K
i
l
l
 
"
C
:
\
f
l
m
s
i
s
t
e
m
a
s
\
F
t
p
C
o
m
m
.
t
x
t
"



 
 
 
 
 
 
 
 
 
 
 
 
K
i
l
l
 
"
C
:
\
f
l
m
s
i
s
t
e
m
a
s
\
v
e
r
s
a
o
a
t
u
a
l
.
t
x
t
"



 
 
 
 
 
 
 
 
 
 
 
 
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
 
I
f






 
 
 
 
E
n
d
 
I
f






T
e
x
t
o
A
r
q
u
i
v
o
 
=
 
"
"















E
l
s
e






v
P
a
t
h
 
=
 
"
c
:
\
f
l
m
s
i
s
t
e
m
a
s
"



v
F
i
l
e
 
=
 
"
U
p
d
a
t
e
S
y
s
t
e
m
F
L
M
.
a
c
c
d
e
"
 
'
n
o
m
e
 
d
o
 
a
r
q
u
i
v
o
 
a
 
s
e
r
 
b
a
i
x
a
d
o



v
F
T
P
S
e
r
v
 
=
 
"
f
t
p
.
f
l
m
s
i
s
t
e
m
a
s
.
c
o
m
.
b
r
"
 
'
S
e
u
 
s
e
r
v
i
d
o
r






'
M
o
n
t
a
n
d
o
 
o
 
c
o
m
a
n
d
o
 
f
t
p
.
e
x
e



f
N
u
m
 
=
 
F
r
e
e
F
i
l
e
(
)



O
p
e
n
 
v
P
a
t
h
 
&
 
"
\
F
t
p
C
o
m
m
.
t
x
t
"
 
F
o
r
 
O
u
t
p
u
t
 
A
s
 
#
f
N
u
m



P
r
i
n
t
 
#
1
,
 
"
u
s
e
r
 
f
l
m
s
i
s
t
e
m
a
s
"
 
'
U
s
u
á
r
i
o



P
r
i
n
t
 
#
1
,
 
"
f
4
8
6
5
7
5
3
"
 
'
S
e
n
h
a



P
r
i
n
t
 
#
1
,
 
"
c
d
 
w
w
w
"



P
r
i
n
t
 
#
1
,
 
"
c
d
 
n
o
v
a
v
e
r
s
a
o
s
i
s
t
e
m
a
"



P
r
i
n
t
 
#
1
,
 
"
l
c
d
 
"
 
&
 
v
P
a
t
h



'
P
r
i
n
t
 
#
1
,
 
"
p
r
o
m
p
t
"



P
r
i
n
t
 
#
1
,
 
"
g
e
t
 
"
 
&
 
v
F
i
l
e



P
r
i
n
t
 
#
1
,
 
"
c
l
o
s
e
"
 
'
F
e
c
h
a
 
c
o
n
e
x
ã
o



P
r
i
n
t
 
#
1
,
 
"
q
u
i
t
"
 
'
F
e
c
h
a
 
p
r
o
g
r
a
m
a
 
F
T
P



C
l
o
s
e






S
h
e
l
l
 
"
f
t
p
 
-
n
 
-
i
 
-
g
 
-
s
:
"
 
&
 
v
P
a
t
h
 
&
 
"
\
F
t
p
C
o
m
m
.
t
x
t
 
"
 
&
 
v
F
T
P
S
e
r
v
,
 
v
b
N
o
r
m
a
l
N
o
F
o
c
u
s






E
n
d
 
I
f






E
x
i
t
 
S
u
b



E
r
r
:






I
f
 
E
r
r
.
N
u
m
b
e
r
 
=
 
5
3
 
O
r
 
E
r
r
.
N
u
m
b
e
r
 
=
 
7
0
 
T
h
e
n



R
e
s
u
m
e
 
N
e
x
t



E
l
s
e



M
s
g
B
o
x
 
"
V
e
r
i
f
i
q
u
e
 
o
s
 
D
a
d
o
s
 
"
 
&
 
E
r
r
.
N
u
m
b
e
r



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