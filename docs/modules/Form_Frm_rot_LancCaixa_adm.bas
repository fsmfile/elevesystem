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



D
i
m
 
V
a
r
C
o
d
L
a
n
c
C
a
i
x
a









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
_
S
a
l
v
a
r
R
e
g
i
s
t
r
o
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
o






I
f
 
I
s
N
u
l
l
(
C
o
d
_
L
a
n
c
C
a
i
x
a
)
 
O
r
 
M
e
.
D
e
s
c
r
i
c
a
o
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"
 
O
r
 
I
s
N
u
l
l
(
M
e
.
V
a
l
o
r
_
L
a
n
c
C
a
i
x
a
)
 
O
r
 
M
e
.
V
a
l
o
r
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"
 
O
r
 
I
s
N
u
l
l
(
M
e
.
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
)
 
O
r
 
M
e
.
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"
 
O
r
 
I
s
N
u
l
l
(
M
e
.
T
i
p
o
_
L
a
n
c
C
a
i
x
a
)
 
O
r
 
M
e
.
T
i
p
o
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"
 
O
r
 
M
e
.
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"
 
O
r
 
I
s
N
u
l
l
(
M
e
.
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a
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
P
o
r
 
f
a
v
o
r
,
 
c
o
m
p
l
e
t
e
 
s
e
u
 
c
a
d
a
s
t
r
o
 
a
n
t
e
s
 
d
e
 
S
a
l
v
a
r
.
"
,
 
v
b
C
r
i
t
i
c
a
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






E
l
s
e






'
D
o
C
m
d
.
R
u
n
C
o
m
m
a
n
d
 
a
c
C
m
d
S
a
v
e
R
e
c
o
r
d



 
 
 
 
C
a
l
l
 
S
a
l
v
a
D
a
d
o
s



 
 
 
 



 
 
 
 
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
D
e
s
e
j
a
 
I
m
p
r
i
m
i
r
 
o
 
C
o
m
p
r
o
v
a
n
t
e
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
O
p
e
n
R
e
p
o
r
t
 
"
r
l
t
_
r
o
t
_
L
a
n
c
C
a
i
x
a
"
,
 
a
c
V
i
e
w
P
r
e
v
i
e
w
,
 
,
 
"
C
o
d
_
L
a
n
c
C
a
i
x
a
=
"
 
&
 
V
a
r
C
o
d
L
a
n
c
C
a
i
x
a
,
 
a
c
W
i
n
d
o
w
N
o
r
m
a
l



 
 
 
 
E
n
d
 
I
f






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
u
s
u
a
r
i
o
l
o
g
a
d
o
_
l
a
n
c
c
a
i
x
a
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
T
i
p
o
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
N
u
m
D
o
c
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
V
a
l
o
r
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
D
e
s
c
r
i
c
a
o
_
L
a
n
c
C
a
i
x
a
 
=
 
"
"






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
o
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
 
2
1
0
5
 
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
 
3
3
1
4
 
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
C
a
m
p
o
s
 
O
b
r
i
g
a
t
ó
r
i
o
s
:
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
V
a
l
o
r
;
 
D
a
t
a
;
 
T
i
p
o
 
d
e
 
L
a
n
ç
a
m
e
n
t
o
;
 
H
i
s
t
ó
r
i
c
o
;
 
P
l
a
n
o
 
d
e
 
C
o
n
t
a
s
.
"
,
 
v
b
E
x
c
l
a
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
 
&
 
v
b
C
r
L
f
 
&
 
E
r
r
.
D
e
s
c
r
i
p
t
i
o
n
,
 
v
b
C
r
i
t
i
c
a
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
 
b
t
n
F
i
l
t
r
a
r
C
a
t
e
g
o
r
i
a
_
C
l
i
c
k
(
)



M
e
.
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a
.
R
e
q
u
e
r
y



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
 
b
t
n
P
a
g
a
r
C
o
n
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
l
i
s
t
a
c
o
n
t
a
s
p
a
g
a
r
"
,
 
a
c
N
o
r
m
a
l



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
 
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
_
G
o
t
F
o
c
u
s
(
)






I
f
 
C
o
n
f
i
g
8
 
=
 
0
 
T
h
e
n



M
e
.
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
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



E
l
s
e



M
e
.
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
.
E
n
a
b
l
e
d
 
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
K
e
y
D
o
w
n
(
K
e
y
C
o
d
e
 
A
s
 
I
n
t
e
g
e
r
,
 
S
h
i
f
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
)



 
 
 
 
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
 
K
e
y
C
o
d
e



 
 
 
 
C
a
s
e
 
v
b
K
e
y
R
e
t
u
r
n



 
 
 
 
K
e
y
C
o
d
e
 
=
 
0



 
 
 
 
E
n
d
 
S
e
l
e
c
t



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
 
l
o
c
a
l
i
z
a
C
a
t
e
g
o
r
i
a
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



M
e
.
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a
.
R
e
q
u
e
r
y



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
 
T
i
p
o
_
L
a
n
c
C
a
i
x
a
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



M
e
.
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a
.
R
e
q
u
e
r
y



E
n
d
 
S
u
b












F
u
n
c
t
i
o
n
 
S
a
l
v
a
D
a
d
o
s
(
)






 
 
 
 
 
 
 
 
S
e
t
 
d
b
 
=
 
C
u
r
r
e
n
t
D
b
(
)



 
 
 
 
 
 
 
 
 
 
 
 
S
e
t
 
r
s
t
 
=
 
d
b
.
O
p
e
n
R
e
c
o
r
d
s
e
t
(
"
t
b
l
_
r
o
t
_
l
a
n
c
C
a
i
x
a
"
)
 
'
A
b
r
e
 
t
a
b
e
l
a






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
.
A
d
d
N
e
w



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
V
a
r
C
o
d
L
a
n
c
C
a
i
x
a
 
=
 
r
s
t
(
"
C
o
d
_
L
a
n
c
C
a
i
x
a
"
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
t
h
r
C
a
d
a
s
t
r
o
_
l
a
n
c
C
a
i
x
a
"
)
 
=
 
D
a
t
e



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
u
s
u
a
r
i
o
l
o
g
a
d
o
_
l
a
n
c
c
a
i
x
a
"
)
 
=
 
M
e
.
u
s
u
a
r
i
o
l
o
g
a
d
o
_
l
a
n
c
c
a
i
x
a



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
T
i
p
o
_
L
a
n
c
C
a
i
x
a
"
)
 
=
 
M
e
.
T
i
p
o
_
L
a
n
c
C
a
i
x
a



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
"
)
 
=
 
M
e
.
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
N
u
m
D
o
c
_
L
a
n
c
C
a
i
x
a
"
)
 
=
 
M
e
.
N
u
m
D
o
c
_
L
a
n
c
C
a
i
x
a



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
V
a
l
o
r
_
L
a
n
c
C
a
i
x
a
"
)
 
=
 
M
e
.
V
a
l
o
r
_
L
a
n
c
C
a
i
x
a



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a
"
)
 
=
 
M
e
.
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
D
e
s
c
r
i
c
a
o
_
L
a
n
c
C
a
i
x
a
"
)
 
=
 
M
e
.
D
e
s
c
r
i
c
a
o
_
L
a
n
c
C
a
i
x
a



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
A
t
i
v
o
_
L
a
n
c
C
a
i
x
a
"
)
 
=
 
-
1



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
F
o
r
m
a
P
a
g
_
L
a
n
c
C
a
i
x
a
"
)
 
=
 
2



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
.
U
p
d
a
t
e






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
.
C
l
o
s
e



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
d
b
.
C
l
o
s
e



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





