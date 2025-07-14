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
 
S
u
b
 
C
a
n
c
e
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
C
l
o
s
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
 
I
n
p
u
t
T
e
x
t
_
D
b
l
C
l
i
c
k
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
g
e
n
d
a
r
 
e
s
t
a
 
O
r
d
e
m
 
d
e
 
S
e
r
v
i
ç
o
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
a
g
e
n
d
a
m
e
n
t
o
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



 
 
 
 
 
 
 
 
r
s
t
(
"
c
o
d
_
o
r
d
e
m
s
e
r
v
i
c
o
_
a
g
e
n
d
a
m
e
n
t
o
"
)
 
=
 
M
e
.
I
n
p
u
t
T
e
x
t



 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
F
u
n
c
A
g
e
n
d
o
u
_
A
g
e
n
d
a
m
e
n
t
o
"
)
 
=
 
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
m
e
n
u
p
r
i
n
c
!
M
a
t
F
u
n
c



 
 
 
 
 
 
 
 
r
s
t
(
"
D
t
H
r
_
A
g
e
n
d
a
m
e
n
t
o
"
)
 
=
 
N
o
w



 
 
 
 
 
 
 
 
r
s
t
(
"
A
u
t
o
r
i
z
a
d
o
P
o
r
_
A
g
e
n
d
a
m
e
n
t
o
"
)
 
=
 
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
m
e
n
u
p
r
i
n
c
!
M
a
t
F
u
n
c



 
 
 
 
 
 
 
 
r
s
t
(
"
A
u
t
o
r
i
z
a
d
o
_
A
g
e
n
d
a
m
e
n
t
o
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
A
g
e
n
d
a
_
a
g
e
n
d
a
m
e
n
t
o
"
)
 
=
 
M
e
.
C
o
d
A
g
e
n
d
a



 
 
 
 
 
 
 
 
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






M
s
g
B
o
x
 
"
A
g
e
n
d
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
 
I
n
p
u
t
T
e
x
t
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



 
 
 
 
I
f
 
L
e
n
(
M
e
.
I
n
p
u
t
T
e
x
t
.
V
a
l
u
e
)
 
>
 
2
5
4
 
A
n
d
 
K
e
y
C
o
d
e
 
<
>
 
4
6
 
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
B
e
e
p



 
 
 
 
 
 
 
 
K
e
y
C
o
d
e
 
=
 
0



 
 
 
 
 
 
 
 
M
e
.
I
n
p
u
t
T
e
x
t
.
V
a
l
u
e
 
=
 
L
e
f
t
(
M
e
.
I
n
p
u
t
T
e
x
t
.
V
a
l
u
e
,
 
2
5
5
)



 
 
 
 
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
 
I
n
p
u
t
T
e
x
t
_
K
e
y
P
r
e
s
s
(
K
e
y
A
s
c
i
i
 
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



 
 
 
 
I
f
 
L
e
n
(
M
e
.
I
n
p
u
t
T
e
x
t
.
V
a
l
u
e
)
 
>
 
2
5
4
 
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
B
e
e
p



 
 
 
 
 
 
 
 
K
e
y
A
s
c
i
i
 
=
 
0



 
 
 
 
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
 
O
K
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
_
O
K
_
C
l
i
c
k



 
 
 
 



 
 
 
 
I
f
 
C
o
n
v
e
r
t
N
u
l
l
s
(
M
e
!
I
n
p
u
t
T
e
x
t
,
 
"
"
)
 
=
 
"
"
 
A
n
d
 
C
o
n
v
e
r
t
N
u
l
l
s
(
M
e
!
o
r
i
g
i
n
a
l
_
t
e
x
t
,
 
"
"
)
 
<
>
 
"
"
 
T
h
e
n



 
 
 
 
 
 
 
 
D
e
l
e
t
e
_
C
l
i
c
k



 
 
 
 
 
 
 
 
E
x
i
t
 
S
u
b



 
 
 
 
E
n
d
 
I
f



 
 
 
 



 
 
 
 
D
i
m
 
d
b
 
A
s
 
D
A
O
.
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
 
r
s
 
A
s
 
D
A
O
.
R
e
c
o
r
d
s
e
t



 
 
 
 
'
d
e
i
x
a
r
 
m
a
r
c
a
d
o
 
'
D
i
m
 
c
r
 
A
s
 
S
t
r
i
n
g



 
 
 
 
D
i
m
 
S
Q
L
 
A
s
 
S
t
r
i
n
g



 
 
 
 
D
i
m
 
f
 
A
s
 
F
o
r
m



 
 
 
 
D
i
m
 
g
 
A
s
 
F
o
r
m



 
 
 
 
D
i
m
 
m
r
 
A
s
 
I
n
t
e
g
e
r



 
 
 
 
S
e
t
 
f
 
=
 
F
o
r
m
s
!
f
r
m
I
n
p
u
t
B
o
x



 
 
 
 
S
e
t
 
g
 
=
 
F
o
r
m
s
!
f
r
m
A
g
e
n
d
a



 
 
 
 
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
Q
L
 
=
 
"
S
E
L
E
C
T
 
*
 
F
R
O
M
 
[
t
b
l
_
a
g
e
n
d
a
m
e
n
t
o
]
 
W
H
E
R
E
 
(
(
[
t
b
l
_
a
g
e
n
d
a
m
e
n
t
o
]
.
I
n
p
u
t
D
a
t
e
=
#
"
 
&
 
f
.
[
I
n
p
u
t
D
a
t
e
]
 
&
 
"
#
)
)
;
"



 
 
 
 
S
e
t
 
r
s
 
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
S
Q
L
)



 
 
 
 
 
 
 
 
I
f
 
r
s
.
R
e
c
o
r
d
C
o
u
n
t
 
=
 
0
 
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
f
!
I
n
p
u
t
T
e
x
t
)
 
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
x
i
t
 
S
u
b



 
 
 
 
 
 
 
 
 
 
 
 
E
n
d
 
I
f



 
 
 
 
 
 
 
 
 
 
 
 
r
s
.
A
d
d
N
e
w



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
!
I
n
p
u
t
D
a
t
e
 
=
 
f
!
I
n
p
u
t
D
a
t
e



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
!
I
n
p
u
t
T
e
x
t
 
=
 
f
!
I
n
p
u
t
T
e
x
t



 
 
 
 
 
 
 
 
 
 
 
 
r
s
.
U
p
d
a
t
e



 
 
 
 
 
 
 
 
 
 
 
 
g
(
"
T
e
x
t
"
 
&
 
f
!
I
n
p
u
t
D
a
y
)
 
=
 
f
!
I
n
p
u
t
T
e
x
t



 
 
 
 
 
 
 
 
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
f
!
I
n
p
u
t
T
e
x
t
)
 
T
h
e
n



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
.
D
e
l
e
t
e



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
g
(
"
T
e
x
t
"
 
&
 
f
!
I
n
p
u
t
D
a
y
)
 
=
 
N
u
l
l



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
E
x
i
t
 
S
u
b



 
 
 
 
 
 
 
 
 
 
 
 
E
n
d
 
I
f



 
 
 
 
 
 
 
 
 
 
 
 
r
s
.
D
e
l
e
t
e



 
 
 
 
 
 
 
 
 
 
 
 
r
s
.
A
d
d
N
e
w



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
!
I
n
p
u
t
D
a
t
e
 
=
 
f
!
I
n
p
u
t
D
a
t
e



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
!
I
n
p
u
t
T
e
x
t
 
=
 
f
!
I
n
p
u
t
T
e
x
t



 
 
 
 
 
 
 
 
 
 
 
 
r
s
.
U
p
d
a
t
e



 
 
 
 
 
 
 
 
 
 
 
 
g
(
"
T
e
x
t
"
 
&
 
f
!
I
n
p
u
t
D
a
y
)
 
=
 
f
!
I
n
p
u
t
T
e
x
t



 
 
 
 
 
 
 
 
E
n
d
 
I
f



 
 
 
 
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






E
x
i
t
_
O
K
_
C
l
i
c
k
:



 
 
 
 
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
_
O
K
_
C
l
i
c
k
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



 
 
 
 
R
e
s
u
m
e
 
E
x
i
t
_
O
K
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
 
D
e
l
e
t
e
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
_
D
e
l
e
t
e
_
C
l
i
c
k



 
 
 
 
D
i
m
 
S
Q
L
 
A
s
 
S
t
r
i
n
g



 
 
 
 
D
i
m
 
m
r
 
A
s
 
I
n
t
e
g
e
r



 
 
 
 
D
i
m
 
f
 
A
s
 
F
o
r
m



 
 
 
 
D
i
m
 
M
i
n
h
a
D
a
t
a
 
A
s
 
D
a
t
e



 
 
 
 



 
 
 
 
S
e
t
 
f
 
=
 
F
o
r
m
s
!
f
r
m
A
g
e
n
d
a



 
 
 
 
m
r
 
=
 
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
 
a
 
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
p
a
g
a
r
 
e
s
t
e
 
r
e
g
i
s
t
r
o
 
?
"
,
 
3
6
,
 
"
D
e
l
e
t
e
"
)



 
 
 
 



 
 
 
 
I
f
 
m
r
 
=
 
6
 
T
h
e
n



 
 
 
 
 
 
 
 
M
e
!
I
n
p
u
t
T
e
x
t
 
=
 
N
u
l
l



 
 
 
 
 
 
 
 
f
(
"
T
e
x
t
"
 
&
 
M
e
!
I
n
p
u
t
D
a
y
)
 
=
 
N
u
l
l



 
 
 
 
 
 
 
 
M
i
n
h
a
D
a
t
a
 
=
 
F
o
r
m
a
t
(
M
e
!
I
n
p
u
t
D
a
t
e
,
 
"
m
m
/
d
d
/
y
y
y
y
"
)



 
 
 
 
 
 
 
 
S
Q
L
 
=
 
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
a
g
e
n
d
a
m
e
n
t
o
.
*
 
F
R
O
M
 
t
b
l
_
a
g
e
n
d
a
m
e
n
t
o
 
W
H
E
R
E
 
t
b
l
_
a
g
e
n
d
a
m
e
n
t
o
.
i
n
p
u
t
d
a
t
e
 
=
 
#
"
 
&
 
M
i
n
h
a
D
a
t
a
 
&
 
"
#
;
"



 
 
 
 
 
 
 
 
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
 
S
Q
L



 
 
 
 
 
 
 
 
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
 
T
r
u
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
 
M
e
.
N
a
m
e



 
 
 
 
E
l
s
e



 
 
 
 
 
 
 
 
M
e
!
I
n
p
u
t
T
e
x
t
.
S
e
t
F
o
c
u
s



 
 
 
 
 
 
 
 
S
e
n
d
K
e
y
s
 
"
{
F
2
}
^
{
H
O
M
E
}
"



 
 
 
 
 
 
 
 
E
x
i
t
 
S
u
b



 
 
 
 
E
n
d
 
I
f



 
 
 
 



E
x
i
t
_
D
e
l
e
t
e
_
C
l
i
c
k
:



 
 
 
 
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
_
D
e
l
e
t
e
_
C
l
i
c
k
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



 
 
 
 
R
e
s
u
m
e
 
E
x
i
t
_
D
e
l
e
t
e
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