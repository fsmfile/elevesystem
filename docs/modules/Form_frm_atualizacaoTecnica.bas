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
M
a
r
g
e
m
M
i
n
i
m
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
 
B
o
t
C
o
r
r
i
g
i
r
V
e
n
d
a
s
D
E
T
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
 
T
r
a
t
a
E
r
r
o






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
Q
u
e
r
y
 
"
C
s
_
V
e
n
d
a
s
D
E
T
S
e
m
V
i
n
c
u
l
o
"






E
x
i
t
 
S
u
b



T
r
a
t
a
E
r
r
o
:



M
s
g
B
o
x
 
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
_
C
o
r
r
i
g
i
r
V
e
n
d
a
s
E
s
t
o
r
n
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
 
T
r
a
t
a
E
r
r
o






D
o
C
m
d
.
S
e
t
W
a
r
n
i
n
g
s
 
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
R
u
n
S
Q
L
 
"
U
P
D
A
T
E
 
t
b
l
_
r
o
t
_
v
e
n
d
a
s
 
S
E
T
 
t
b
l
_
r
o
t
_
v
e
n
d
a
s
.
E
s
t
o
r
n
o
v
e
n
d
a
 
=
 
0
"
 
_



&
 
"
 
W
H
E
R
E
 
(
(
(
t
b
l
_
r
o
t
_
v
e
n
d
a
s
.
E
s
t
o
r
n
o
v
e
n
d
a
)
=
T
r
u
e
)
)
;
"






M
s
g
B
o
x
 
"
T
o
d
o
s
 
a
s
 
V
e
n
d
a
s
 
e
 
O
r
ç
a
m
e
n
t
o
s
 
f
o
r
a
m
 
c
o
r
r
i
g
i
d
o
s
 
c
o
n
f
o
r
m
e
 
o
s
 
n
o
v
o
s
 
c
a
m
p
o
s
 
c
r
i
a
d
o
s
.
"






E
x
i
t
 
S
u
b









T
r
a
t
a
E
r
r
o
:



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
 
-
 
F
L
M
 
S
I
S
T
E
M
A
S
"






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
_
C
r
i
a
r
T
b
l
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
c
r
i
a
r
t
b
l
b
e
"
,
 
a
c
F
o
r
m
D
S






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
_
E
x
c
l
u
i
r
O
r
ç
V
e
n
c
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
 
T
r
a
t
a
E
r
r
o






D
o
C
m
d
.
S
e
t
W
a
r
n
i
n
g
s
 
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
R
u
n
S
Q
L
 
"
D
E
L
E
T
E
 
t
b
l
_
r
o
t
_
v
e
n
d
a
s
.
D
t
V
a
l
i
d
a
d
e
O
r
c
a
m
e
n
t
o
,
 
t
b
l
_
r
o
t
_
v
e
n
d
a
s
.
V
e
n
d
a
F
i
n
a
l
i
z
a
d
a
_
v
e
n
d
a
s
 
F
R
O
M
 
t
b
l
_
r
o
t
_
v
e
n
d
a
s
"
 
_



&
 
"
 
W
H
E
R
E
 
(
(
(
t
b
l
_
r
o
t
_
v
e
n
d
a
s
.
D
t
V
a
l
i
d
a
d
e
O
r
c
a
m
e
n
t
o
)
<
D
a
t
e
(
)
)
 
A
N
D
 
(
(
t
b
l
_
r
o
t
_
v
e
n
d
a
s
.
V
e
n
d
a
F
i
n
a
l
i
z
a
d
a
_
v
e
n
d
a
s
)
=
F
a
l
s
e
)
)
;
"






M
s
g
B
o
x
 
"
T
o
d
o
s
 
o
s
 
O
r
ç
a
m
e
n
t
o
s
 
V
e
n
c
i
d
o
s
 
f
o
r
a
m
 
e
x
c
l
u
í
d
o
s
.
"






E
x
i
t
 
S
u
b









T
r
a
t
a
E
r
r
o
:



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
 
-
 
F
L
M
 
S
I
S
T
E
M
A
S
"






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
_
U
p
d
a
t
e
C
o
n
f
i
g
B
E
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
S
e
t
W
a
r
n
i
n
g
s
 
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
R
u
n
S
Q
L
 
"
I
N
S
E
R
T
 
I
N
T
O
 
t
b
l
_
c
a
d
_
C
l
i
e
n
t
e
s
F
L
M
 
(
 
C
o
d
C
l
i
e
n
t
e
_
F
L
M
,
 
N
o
m
e
D
r
o
p
B
o
x
,
 
N
o
m
e
A
m
i
g
a
v
e
l
 
)
"
 
_



&
 
"
 
S
E
L
E
C
T
 
T
M
P
_
C
o
n
f
i
g
B
E
.
C
o
d
C
l
i
e
n
t
e
_
F
L
M
,
 
T
M
P
_
C
o
n
f
i
g
B
E
.
N
o
m
e
D
r
o
p
B
o
x
,
 
T
M
P
_
C
o
n
f
i
g
B
E
.
N
o
m
e
A
m
i
g
a
v
e
l
"
 
_



&
 
"
 
F
r
o
m
 
T
M
P
_
C
o
n
f
i
g
B
E
"
 
_



&
 
"
 
W
H
E
R
E
 
(
(
(
T
M
P
_
C
o
n
f
i
g
B
E
.
C
o
d
C
l
i
e
n
t
e
_
F
L
M
)
>
"
 
&
 
D
L
a
s
t
(
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
"
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
c
l
i
e
n
t
e
s
F
L
M
"
)
 
&
 
"
)
)
;
"






M
s
g
B
o
x
 
"
A
t
u
a
l
i
z
a
d
o
 
c
o
m
 
S
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
A
l
t
e
r
a
r
V
e
r
s
a
o
B
E
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
V
e
r
s
a
o
B
a
c
k
E
n
d
"






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
A
t
u
a
l
i
z
a
B
e
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
 
B
a
c
k
E
n
d
 
c
o
m
 
o
s
 
c
a
d
a
s
t
r
o
 
r
e
a
l
i
z
a
d
o
s
 
a
c
i
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



C
a
l
l
 
A
t
u
a
l
i
z
a
r
B
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
M
a
r
g
e
m
M
i
n
_
C
l
i
c
k
(
)






 
 
 
 
 
 
 
 
V
a
r
M
a
r
g
e
m
M
i
n
i
m
a
 
=
 
I
n
p
u
t
B
o
x
(
"
I
n
f
o
r
m
e
 
a
 
M
a
r
g
e
m
 
m
í
n
i
m
a
 
a
 
S
e
r
 
a
p
l
i
c
a
d
a
 
e
m
 
T
O
D
O
S
 
o
s
 
p
r
o
d
u
t
o
s
:
"
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



 
 
 
 
 
 
 
 
D
o
C
m
d
.
R
u
n
S
Q
L
 
"
U
P
D
A
T
E
 
t
b
l
_
c
a
d
_
p
r
o
d
s
e
r
v
 
S
E
T
 
t
b
l
_
c
a
d
_
p
r
o
d
s
e
r
v
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
"
 
&
 
V
a
r
M
a
r
g
e
m
M
i
n
i
m
a
 
&
 
"
;
"



 
 
 
 
 
 
 
 



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
C
a
d
A
t
u
a
l
i
z
a
B
e
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
a
l
t
b
e
"
,
 
a
c
F
o
r
m
D
S






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
 
B
t
n
C
a
d
R
e
l
a
c
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
c
r
i
a
r
R
e
l
a
c
B
e
"
,
 
a
c
F
o
r
m
D
S






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
 
B
t
n
C
o
n
f
i
g
B
e
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
 
D
F
i
r
s
t
(
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
"
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
c
l
i
e
n
t
e
s
F
L
M
"
)
 
<
 
4
0
0
 
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
S
e
t
W
a
r
n
i
n
g
s
 
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
R
u
n
S
Q
L
 
"
U
P
D
A
T
E
 
t
b
l
_
c
a
d
_
C
l
i
e
n
t
e
s
F
L
M
 
S
E
T
 
t
b
l
_
c
a
d
_
C
l
i
e
n
t
e
s
F
L
M
.
C
o
d
C
l
i
e
n
t
e
_
F
L
M
 
=
 
4
0
5
"
 
_



&
 
"
 
W
H
E
R
E
 
(
(
(
t
b
l
_
c
a
d
_
C
l
i
e
n
t
e
s
F
L
M
.
C
o
d
C
l
i
e
n
t
e
_
F
L
M
)
=
"
 
&
 
D
F
i
r
s
t
(
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
"
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
c
l
i
e
n
t
e
s
F
L
M
"
)
 
&
 
"
)
)
;
"






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
Q
u
e
r
y
 
"
C
s
_
U
p
d
a
t
e
C
o
n
f
i
g
B
e
"






E
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
Q
u
e
r
y
 
"
C
s
_
U
p
d
a
t
e
C
o
n
f
i
g
B
e
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
C
o
r
r
i
g
i
r
C
l
i
e
n
t
e
s
A
t
i
v
o
s
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
R
u
n
S
Q
L
 
"
U
P
D
A
T
E
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
 
S
E
T
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
.
A
t
i
v
o
_
C
l
i
e
n
t
e
 
=
 
Y
e
s
;
"






M
s
g
B
o
x
 
"
A
t
u
a
l
i
z
a
d
o
 
c
o
m
 
S
u
c
e
s
s
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
 
-
 
F
L
M
 
S
i
s
t
e
m
a
s
"









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
C
o
r
r
i
g
i
r
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
 
e
x
c
l
u
i
r
 
a
s
 
p
a
r
c
e
l
a
s
 
d
e
 
C
o
n
t
a
s
 
a
 
r
e
c
e
b
e
r
 
s
e
m
 
r
e
g
i
s
t
r
o
s
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
 
-
 
F
L
M
 
S
i
s
t
e
m
a
s
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
S
e
t
W
a
r
n
i
n
g
s
 
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
R
u
n
S
Q
L
 
"
D
E
L
E
T
E
 
t
b
l
_
r
o
t
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
_
d
e
t
.
*
,
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
"
 
_



&
 
"
 
F
R
O
M
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
 
R
I
G
H
T
 
J
O
I
N
 
t
b
l
_
r
o
t
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
_
d
e
t
 
O
N
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
=
 
t
b
l
_
r
o
t
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
_
d
e
t
.
C
o
d
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
"
 
_



&
 
"
 
W
H
E
R
E
 
(
(
(
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
)
 
I
s
 
N
u
l
l
)
)
;
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
C
o
r
r
i
g
i
r
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
 
T
r
a
t
a
E
r
r
o






D
o
C
m
d
.
S
e
t
W
a
r
n
i
n
g
s
 
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
R
u
n
S
Q
L
 
"
U
P
D
A
T
E
 
t
b
l
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
 
S
E
T
 
t
b
l
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
.
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
 
=
 
-
1
,
"
 
_



&
 
"
 
t
b
l
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
.
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
 
=
 
2
;
"






M
s
g
B
o
x
 
"
T
o
d
o
s
 
o
s
 
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
s
 
d
e
 
C
a
i
x
a
 
f
o
r
a
m
 
c
o
r
r
i
g
i
d
o
s
 
c
o
n
f
o
r
m
e
 
o
s
 
n
o
v
o
s
 
c
a
m
p
o
s
 
c
r
i
a
d
o
s
.
"






E
x
i
t
 
S
u
b









T
r
a
t
a
E
r
r
o
:



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
 
-
 
F
L
M
 
S
I
S
T
E
M
A
S
"






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
 
B
t
n
C
r
i
a
r
R
e
l
a
c
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
 
B
a
c
k
E
n
d
 
c
o
m
 
o
s
 
c
a
d
a
s
t
r
o
 
r
e
a
l
i
z
a
d
o
s
 
a
c
i
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



C
a
l
l
 
f
n
c
C
r
i
a
r
R
e
l
a
c



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
 
"
f
r
m
_
a
t
u
a
l
i
z
a
c
a
o
t
e
c
n
i
c
a
"
,
 
a
c
S
a
v
e
N
o






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
r
o
d
S
e
m
V
i
n
c
V
e
n
d
a
s
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
Q
u
e
r
y
 
"
C
s
_
V
e
n
d
a
s
D
e
t
S
e
m
V
i
n
c
u
l
o
"
,
 
a
c
V
i
e
w
N
o
r
m
a
l
,
 
a
c
E
d
i
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
 
b
t
n
V
i
n
c
u
l
a
r
t
a
b
e
l
a
s
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
 
f
n
c
V
i
n
c
u
l
a
r
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
P
a
t
h
 
&
 
"
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
_
b
e
.
a
c
c
d
b
"
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
0
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
R
u
n
S
Q
L
 
"
D
E
L
E
T
E
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
.
*
,
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
.
N
o
m
e
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
e
"
 
_



&
 
"
 
F
r
o
m
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
 
W
H
E
R
E
 
(
(
(
"
 
&
 
t
x
t
T
a
b
e
l
a
.
V
a
l
u
e
 
&
 
"
)
=
'
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
#
'
)
)
;
"






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
5
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
 
B
a
c
k
E
n
d
 
c
o
m
 
o
s
 
c
a
d
a
s
t
r
o
 
r
e
a
l
i
z
a
d
o
s
 
a
c
i
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



C
a
l
l
 
f
n
c
C
r
i
a
r
T
a
b
e
l
a



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
 
t
x
t
C
o
r
r
i
g
i
r
E
m
a
i
l
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
 
T
r
a
t
a
E
r
r
o






D
o
C
m
d
.
R
u
n
S
Q
L
 
"
S
E
L
E
C
T
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
.
[
E
-
m
a
i
l
_
c
l
i
e
n
t
e
]
 
I
N
T
O
 
T
M
P
_
C
l
i
e
n
t
e
_
E
m
a
i
l
 
F
R
O
M
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
;
"



D
o
C
m
d
.
R
u
n
S
Q
L
 
"
U
P
D
A
T
E
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
 
I
N
N
E
R
 
J
O
I
N
 
T
M
P
_
C
l
i
e
n
t
e
_
E
m
a
i
l
 
O
N
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
.
[
E
-
m
a
i
l
_
c
l
i
e
n
t
e
]
 
=
 
T
M
P
_
C
l
i
e
n
t
e
_
E
m
a
i
l
.
[
E
-
m
a
i
l
_
c
l
i
e
n
t
e
]
 
S
E
T
 
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
.
e
m
a
i
l
_
c
l
i
e
n
t
e
 
=
 
[
T
M
P
_
C
l
i
e
n
t
e
_
E
m
a
i
l
]
!
[
E
-
m
a
i
l
_
c
l
i
e
n
t
e
]
;
"






E
x
i
t
 
S
u
b






T
r
a
t
a
E
r
r
o
:



M
s
g
B
o
x
 
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
e
x
i
b
i
r
v
e
n
d
a
s
d
u
p
l
i
c
a
d
a
s
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
 
T
r
a
t
a
E
r
r
o






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
Q
u
e
r
y
 
"
c
s
_
v
e
n
d
a
s
d
u
p
l
i
c
a
d
a
s
"
,
 
a
c
V
i
e
w
N
o
r
m
a
l
,
 
a
c
E
d
i
t






E
x
i
t
 
S
u
b



T
r
a
t
a
E
r
r
o
:



M
s
g
B
o
x
 
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
 
S
u
b