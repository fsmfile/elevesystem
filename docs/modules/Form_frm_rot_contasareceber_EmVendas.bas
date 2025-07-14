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
_
c
l
o
s
e
F
o
r
m
_
C
l
i
c
k
(
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
 
b
t
n
_
e
x
c
l
u
i
r
R
e
g
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






 
 
 
 
M
s
g
B
o
x
 
"
V
o
c
ê
 
e
s
t
á
 
e
x
c
l
u
i
n
d
o
 
a
 
d
í
d
i
d
a
 
d
e
s
t
e
 
c
l
i
e
n
t
e
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
C
o
m
 
i
s
s
o
 
o
 
s
i
s
t
e
m
a
 
i
r
á
 
e
x
c
l
u
i
r
 
a
 
f
o
r
m
a
 
d
e
 
p
a
g
a
m
e
n
t
o
 
A
 
P
R
A
Z
O
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



 
 
 
 
M
e
.
V
a
l
o
r
T
o
t
a
l
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
.
S
e
t
F
o
c
u
s



 
 
 
 
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
D
e
l
e
t
e
R
e
c
o
r
d



 
 
 
 
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
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
,
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
 
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
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
 
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
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
)
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
F
r
m
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
]
!
[
V
e
n
d
a
s
]
!
[
c
o
d
_
v
e
n
d
a
]
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
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
)
=
1
)
)
;
"



 
 
 
 
F
o
r
m
s
!
f
r
m
_
i
n
s
e
r
i
r
f
o
r
m
a
p
a
g
a
m
e
n
t
o
!
f
r
m
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
_
s
u
b
f
o
r
m
u
l
a
r
i
o
.
R
e
q
u
e
r
y






 
 
 
 
'
A
p
a
g
a
 
o
s
 
d
a
d
o
s
 
d
a
 
t
a
b
e
l
a
 
t
e
m
p
o
r
á
r
i
a



 
 
 
 
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






 
 
 
 
f
r
m
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
_
s
u
b
f
o
r
m
u
l
a
r
i
o
.
S
e
t
F
o
c
u
s






 
 
 
 
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
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
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
E
T
_
C
r
i
a
r
C
R
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
E
T
_
C
r
i
a
r
C
R
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
)
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
f
r
m
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
_
e
m
V
e
n
d
a
s
]
!
[
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
]
)
)
;
"



 
 
 
 



 
 
 
 
M
e
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
 
0



 
 
 
 



 
 
 
 
M
e
.
f
r
m
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
_
s
u
b
f
o
r
m
u
l
a
r
i
o
.
R
e
q
u
e
r
y



 
 
 
 



 
 
 
 
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
_
e
m
v
e
n
d
a
s
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
4
5
0
 
T
h
e
n






 
 
 
 
F
o
r
m
s
!
f
r
m
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
!
V
e
n
d
a
s
!
I
n
s
e
r
i
r
F
o
r
m
a
P
a
g
a
m
e
n
t
o
.
R
e
q
u
e
r
y



 
 
 
 
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
_
e
m
v
e
n
d
a
s
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
 
c
r
i
a
r
 
e
s
t
a
 
C
o
n
t
a
 
a
 
R
e
c
e
b
e
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






 
 
 
 
'
R
e
a
l
i
z
a
 
t
e
s
t
e
 
p
a
r
a
 
v
e
r
i
f
i
c
a
r
 
s
e
 
e
x
i
s
t
e
 
a
l
g
u
m
a
 
p
a
r
c
e
l
a
 
c
r
i
a
d
a



 
 
 
 
I
f
 
M
e
.
t
x
t
V
e
r
i
f
i
c
a
C
a
d
a
s
t
r
o
 
>
 
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



 
 
 
 



 
 
 
 
'
C
o
p
i
a
 
o
s
 
d
a
d
o
s
 
d
a
 
t
a
b
e
l
a
 
t
e
m
p
o
r
á
r
i
a
 
p
a
r
a
 
a
 
t
a
b
e
l
a
 
d
o
 
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
 
(
 
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
,
 
N
u
m
e
r
a
c
a
o
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
R
e
c
e
b
e
r
D
E
T
,
 
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
R
e
c
e
b
e
r
D
E
T
,
 
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
E
T
,
 
D
a
t
a
V
e
n
c
i
m
e
n
t
o
_
c
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
E
T
_
C
r
i
a
r
C
R
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
,
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
.
N
u
m
e
r
a
c
a
o
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
R
e
c
e
b
e
r
D
E
T
,
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
.
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
R
e
c
e
b
e
r
D
E
T
,
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
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
E
T
,
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
.
D
a
t
a
V
e
n
c
i
m
e
n
t
o
_
c
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
"
 
_



 
 
 
 
&
 
"
 
F
R
O
M
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
;
"



 
 
 
 



 
 
 
 
M
s
g
B
o
x
 
"
C
o
n
t
a
 
a
 
R
e
c
e
b
e
r
 
c
r
i
a
d
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



 
 
 
 



 
 
 
 
'
l
i
m
p
a
 
o
s
 
c
a
m
p
o
s



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
V
a
l
o
r
T
o
t
a
l
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
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
D
t
V
e
n
c
i
m
e
n
t
o
_
c
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
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
c
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
O
b
s
e
r
v
a
c
a
o
_
c
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
'
M
e
.
t
x
t
_
i
n
t
e
r
v
a
l
o
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
'
M
e
.
t
x
t
_
q
t
d
I
n
t
e
r
v
a
l
o
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
'
A
p
a
g
a
 
o
s
 
d
a
d
o
s
 
d
a
 
t
a
b
e
l
a
 
t
e
m
p
o
r
á
r
i
a



 
 
 
 
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






 
 
 
 
f
r
m
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
_
s
u
b
f
o
r
m
u
l
a
r
i
o
.
S
e
t
F
o
c
u
s






 
 
 
 
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
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
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
E
T
_
C
r
i
a
r
C
R
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
E
T
_
C
r
i
a
r
C
R
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
)
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
f
r
m
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
_
e
m
V
e
n
d
a
s
]
!
[
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
]
)
)
;
"



 
 
 
 



 
 
 
 
M
e
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
 
0



 
 
 
 



 
 
 
 
M
e
.
f
r
m
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
_
s
u
b
f
o
r
m
u
l
a
r
i
o
.
R
e
q
u
e
r
y



 
 
 
 



 
 
 
 
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
_
e
m
v
e
n
d
a
s
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
 
S
a
l
v
a
r
 
u
m
a
 
C
o
n
t
a
 
s
e
m
 
g
e
r
a
r
 
u
m
a
 
p
a
r
c
e
l
a
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
S
a
v
e
_
G
e
r
a
P
a
r
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






I
f
 
M
e
.
t
x
t
V
e
r
i
f
i
c
a
C
a
d
a
s
t
r
o
 
>
 
0
 
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
P
a
r
c
e
l
a






E
l
s
e






 
 
 
 
I
f
 
I
s
N
u
l
l
(
V
a
l
o
r
T
o
t
a
l
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
)
 
O
r
 
M
e
.
D
t
V
e
n
c
i
m
e
n
t
o
_
c
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
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
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



 
 
 
 
 
 
 
 
v
a
r
C
o
d
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
C
o
n
t
a
s
a
R
e
c
e
b
e
r
"
)



 
 
 
 
 
 
 
 
r
s
t
(
"
v
a
l
o
r
t
o
t
a
l
_
c
o
n
t
a
s
r
e
c
e
b
e
r
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
T
o
t
a
l
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



 
 
 
 
 
 
 
 
r
s
t
(
"
d
t
V
e
n
c
i
m
e
n
t
o
_
c
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
)
 
=
 
M
e
.
D
t
V
e
n
c
i
m
e
n
t
o
_
c
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



 
 
 
 
 
 
 
 
r
s
t
(
"
P
a
r
c
e
l
a
s
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
)
 
=
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r



 
 
 
 
 
 
 
 
r
s
t
(
"
c
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
c
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
)
 
=
 
M
e
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
c
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



 
 
 
 
 
 
 
 
r
s
t
(
"
O
b
s
e
r
v
a
c
a
o
_
c
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
)
 
=
 
M
e
.
O
b
s
e
r
v
a
c
a
o
_
c
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



 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
V
e
n
d
a
_
c
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
)
 
=
 
M
e
.
C
o
d
V
e
n
d
a
_
c
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



 
 
 
 
'
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



 
 
 
 
'
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






 
 
 
 
'
P
a
s
s
a
 
o
 
c
ó
d
i
g
o
 
d
o
 
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
 
d
a
 
v
a
r
i
á
v
e
l
 
p
a
r
a
 
o
 
C
a
m
p
o
 
C
o
d
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



 
 
 
 
M
e
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
 
v
a
r
C
o
d
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









 
 
 
 
'
I
n
í
c
i
o
 
d
a
 
C
r
i
a
ç
ã
o
 
d
a
 
P
a
r
c
e
l
a



 
 
 
 
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
P
a
r
c
e
l
a






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
 
F
u
n
c
t
i
o
n
 
f
n
c
C
r
i
a
P
a
r
c
e
l
a
(
)



 
 
 
 
I
f
 
N
o
t
 
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
 
T
h
e
n






 
 
 
 
 
 
 
 
I
f
 
I
s
N
u
l
l
(
c
o
d
_
c
l
i
e
n
t
e
_
c
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
)
 
O
r
 
I
s
N
u
l
l
(
V
a
l
o
r
T
o
t
a
l
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
)
 
O
r
 
I
s
N
u
l
l
(
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
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
O
s
 
c
a
m
p
o
s
 
C
L
I
E
N
T
E
,
 
V
A
L
O
R
 
T
O
T
A
L
 
e
 
Q
T
D
 
D
E
 
P
A
R
C
E
L
A
S
 
p
r
e
c
i
s
a
m
 
e
s
t
a
r
 
p
r
e
e
n
c
h
i
d
o
s
 
p
a
r
a
 
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
 
s
e
r
e
m
 
g
e
r
a
d
a
s
.
"
,
 
v
b
O
K
O
n
l
y
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






 
 
 
 
 
 
 
 
f
r
m
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
_
s
u
b
f
o
r
m
u
l
a
r
i
o
.
S
e
t
F
o
c
u
s






 
 
 
 
 
 
 
 
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
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
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
E
T
_
C
r
i
a
r
C
R
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
E
T
_
C
r
i
a
r
C
R
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
)
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
f
r
m
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
_
e
m
v
e
n
d
a
s
]
!
[
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
]
)
)
;
"






 
 
 
 
 
 
 
 
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
T
M
P
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
E
T
_
C
r
i
a
r
C
R
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
R
e
c
e
b
e
r
D
E
T
 
=
 
M
e
.
V
a
l
o
r
T
o
t
a
l
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
 
/
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
'
V
a
l
o
r
 
d
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









 
 
 
 
 
 
 
 
'
X
 
=
 
M
e
.
t
x
t
_
q
t
d
I
n
t
e
r
v
a
l
o



 
 
 
 
 
 
 
 
'
C
o
n
t
a
d
o
r
 
=
 
1



 
 
 
 
 
 
 
 
'
S
o
m
a
 
=
 
0



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
'
D
o
 
W
h
i
l
e
 
C
o
n
t
a
d
o
r
 
<
 
X



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
F
o
r
 
i
 
=
 
1
 
T
o
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
'
I
n
s
e
r
e
 
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
 
n
a
 
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



 
 
 
 
 
 
 
 
r
s
t
(
"
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
)
 
=
 
M
e
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



 
 
 
 
 
 
 
 
r
s
t
(
"
N
u
m
e
r
a
c
a
o
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
R
e
c
e
b
e
r
D
E
T
"
)
 
=
 
i



 
 
 
 
 
 
 
 
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
R
e
c
e
b
e
r
D
E
T
"
)
 
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
E
T



 
 
 
 
 
 
 
 
r
s
t
(
"
D
a
t
a
V
e
n
c
i
m
e
n
t
o
_
c
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
"
)
 
=
 
D
a
t
e
A
d
d
(
"
m
"
,
 
(
i
 
-
 
1
)
,
 
M
e
.
D
t
V
e
n
c
i
m
e
n
t
o
_
c
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
)
 
'
C
a
l
c
u
l
a
 
a
s
 
d
a
t
a
s
 
d
e
 
v
e
n
c
i
m
e
n
t
o



 
 
 
 
 
 
 
 
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






 
 
 
 
 
 
 
 
N
e
x
t






 
 
 
 
 
 
 
 
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






 
 
 
 
 
 
 
 
M
e
.
f
r
m
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
_
s
u
b
f
o
r
m
u
l
a
r
i
o
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
 
I
f






 
 
 
 
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
c
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
D
E
T
,
 
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
,
 
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
N
u
m
e
r
a
c
a
o
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
R
e
c
e
b
e
r
D
E
T
,
 
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
R
e
c
e
b
e
r
D
E
T
,
 
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
D
a
t
a
V
e
n
c
i
m
e
n
t
o
_
c
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
,
 
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
R
e
c
e
b
e
r
D
E
T
,
 
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
E
T
 
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
)
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
f
r
m
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
]
!
[
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
]
)
)
;
"



 
 
 
 
M
e
.
f
r
m
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
_
s
u
b
f
o
r
m
u
l
a
r
i
o
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
 
I
f






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






I
f
 
M
e
.
t
x
t
V
e
r
i
f
i
c
a
C
a
d
a
s
t
r
o
 
>
 
0
 
T
h
e
n






 
 
 
 
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
 
f
e
c
h
a
r
 
e
s
t
a
 
j
a
n
e
l
a
 
s
e
m
 
S
a
l
v
a
r
 
a
s
 
i
n
f
o
r
m
a
ç
õ
e
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
 
F
r
o
m
 
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
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
f
r
m
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
_
e
m
v
e
n
d
a
s
]
!
[
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
]
)
)
;
"



 
 
 
 



 
 
 
 
f
r
m
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
_
s
u
b
f
o
r
m
u
l
a
r
i
o
.
S
e
t
F
o
c
u
s






 
 
 
 
'
A
p
a
g
a
 
o
s
 
d
a
d
o
s
 
d
a
 
t
a
b
e
l
a
 
t
e
m
p
o
r
á
r
i
a



 
 
 
 
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
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
E
T
_
C
r
i
a
r
C
R
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
E
T
_
C
r
i
a
r
C
R
;
"
 
_



 
 
 
 
'
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
E
T
_
C
r
i
a
r
C
R
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
)
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
f
r
m
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
]
!
[
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
]
)
)
;
"



 
 
 
 



 
 
 
 
'
A
p
a
g
a
 
a
 
f
o
r
m
a
 
d
e
 
p
a
g
a
m
e
n
t
o
 
"
A
 
p
r
a
z
o
"
 
d
a
 
l
i
s
t
a
 
d
e
 
p
a
g
a
m
e
n
t
o
s
 
d
e
s
t
a
 
v
e
n
d
a



 
 
 
 
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
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
,
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
 
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
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
 
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
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
)
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
F
r
m
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
]
!
[
V
e
n
d
a
s
]
!
[
c
o
d
_
v
e
n
d
a
]
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
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
)
=
1
)
)
;
"



 
 
 
 



 
 
 
 
'
f
e
c
h
a
 
a
 
j
a
n
e
l
a
 
d
o
 
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
_
e
m
v
e
n
d
a
s
"
,
 
a
c
S
a
v
e
Y
e
s



 
 
 
 



 
 
 
 
'
A
t
u
a
l
i
z
a
 
a
 
j
a
n
e
l
a
 
d
e
 
f
o
r
m
a
 
d
e
 
p
a
g
a
m
e
n
t
o



 
 
 
 
F
o
r
m
s
!
f
r
m
_
i
n
s
e
r
i
r
f
o
r
m
a
p
a
g
a
m
e
n
t
o
!
f
r
m
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
_
s
u
b
f
o
r
m
u
l
a
r
i
o
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
 
I
f






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
_
e
m
v
e
n
d
a
s
"
,
 
a
c
S
a
v
e
Y
e
s






'
A
p
a
g
a
 
a
 
f
o
r
m
a
 
d
e
 
p
a
g
a
m
e
n
t
o
 
"
A
 
p
r
a
z
o
"
 
d
a
 
l
i
s
t
a
 
d
e
 
p
a
g
a
m
e
n
t
o
s
 
d
e
s
t
a
 
v
e
n
d
a



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
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
,
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
 
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
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
 
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
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
)
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
F
r
m
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
]
!
[
V
e
n
d
a
s
]
!
[
c
o
d
_
v
e
n
d
a
]
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
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
)
=
1
)
)
;
"






'
A
t
u
a
l
i
z
a
 
a
 
j
a
n
e
l
a
 
d
e
 
f
o
r
m
a
 
d
e
 
p
a
g
a
m
e
n
t
o



F
o
r
m
s
!
f
r
m
_
i
n
s
e
r
i
r
f
o
r
m
a
p
a
g
a
m
e
n
t
o
!
f
r
m
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
_
s
u
b
f
o
r
m
u
l
a
r
i
o
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
 
I
f






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
4
5
0
 
T
h
e
n






 
 
 
 
F
o
r
m
s
!
f
r
m
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
!
V
e
n
d
a
s
!
I
n
s
e
r
i
r
F
o
r
m
a
P
a
g
a
m
e
n
t
o
.
R
e
q
u
e
r
y



 
 
 
 
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
_
e
m
v
e
n
d
a
s
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