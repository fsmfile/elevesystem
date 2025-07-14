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
 
w
h
e
r
e
"
 
&
 
"
 
C
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
 
N
o
v
o
2
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



 
 
 
 
M
e
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
2
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
M
e
.
C
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
 
w
h
e
r
e
 
"
 
&
 
"
 
C
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
 
B
t
n
_
A
b
r
i
r
C
o
n
f
i
g
B
a
c
k
u
p
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
F
r
m
_
c
o
n
f
i
g
b
a
c
k
u
p
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
,
 
,
 
,
 
a
c
F
o
r
m
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
_
b
u
s
c
a
c
e
p
_
C
l
i
c
k
(
)






'
C
a
l
l
 
p
e
g
a
_
t
a
b
e
l
a
 
'
*
*
*
 
C
ó
d
i
g
o
 
a
n
t
i
g
o






'
A
p
ó
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
ã
o
 
o
 
c
ó
d
i
g
o
 
n
ã
o
 
l
o
c
a
l
i
z
a
 
m
a
i
s
 
a
s
 
t
a
b
e
l
a
s
 
n
o
 
s
i
t
e
 
d
o
 
c
o
r
r
e
i
o
s
.



'
C
ó
d
i
g
o
 
a
l
t
e
r
a
d
o
 
p
a
r
a
 
b
u
s
c
a
r
 
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
 
n
o
 
s
i
t
e
 
h
t
t
p
:
/
/
r
e
p
u
b
l
i
c
a
v
i
r
t
u
a
l
.
c
o
m
.
b
r
/
c
e
p
/
 
u
t
i
l
i
z
a
n
d
o
 
o
 
W
e
b
S
e
r
v
i
c
e
 
C
E
P



'
É
 
u
m
 
s
e
r
v
i
ç
o
 
d
e
 
c
o
n
s
u
l
t
a
 
d
e
 
C
E
P
 
p
a
r
a
 
s
e
r
 
u
t
i
l
i
z
a
d
o
 
c
o
m
o
 
a
u
x
i
l
i
a
r
 
p
a
r
a
 
q
u
a
l
q
u
e
r
 
s
i
s
t
e
m
a
,






'
*
*
*
*
*



'
C
ó
d
i
g
o
 
N
o
v
o



'
A
p
p
l
i
c
a
t
i
o
n
.
D
i
s
p
l
a
y
A
l
e
r
t
s
 
=
 
F
a
l
s
e



 



I
f
 
M
e
.
c
e
p
_
c
l
i
e
n
t
e
 
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
F
a
v
o
r
 
d
i
g
i
t
a
r
 
u
m
 
C
E
P
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






'
D
i
m
 
C
E
P
 
A
s
 
S
t
r
i
n
g






'
C
E
P
 
=
 
M
e
.
c
e
p
_
c
l
i
e
n
t
e






'
A
c
t
i
v
e
W
o
r
k
b
o
o
k
.
X
m
l
I
m
p
o
r
t
 
U
R
L
:
=
"
h
t
t
p
:
/
/
w
e
b
s
e
r
v
i
c
e
.
k
i
n
g
h
o
s
t
.
n
e
t
/
w
e
b
_
c
e
p
.
p
h
p
?
a
u
t
h
=
d
2
3
1
8
b
f
b
5
c
0
a
9
e
3
3
3
b
3
d
6
4
e
9
1
c
c
2
6
3
e
5
&
f
o
r
m
a
t
o
=
x
m
l
&
c
e
p
=
"
 
&
 
C
E
P
,
 
i
m
p
o
r
t
m
a
p
:
=
N
o
t
h
i
n
g
,
 
o
v
e
r
w
r
i
t
e
:
=
F
a
l
s
e
,
 
D
e
s
t
i
n
a
t
i
o
n
:
=
P
l
a
n
1
.
C
e
l
l
s
(
1
,
 
1
)






'
I
f
 
P
l
a
n
1
.
C
e
l
l
s
(
1
,
 
2
)
 
=
 
"
s
u
c
e
s
s
o
 
-
 
c
e
p
 
n
ã
o
 
e
n
c
o
n
t
r
a
d
o
"
 
T
h
e
n



'
 
 
 
 
M
s
g
B
o
x
 
(
"
C
E
P
 
d
i
g
i
t
a
d
o
 
n
ã
o
 
f
o
i
 
e
n
c
o
n
t
r
a
d
o
"
)
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



'
 
 
 
 
E
x
i
t
 
S
u
b



'
E
n
d
 
I
f






'
M
e
.
N
u
m
e
r
o
_
c
l
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
G
r
u
p
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
v
i
n
c
u
l
a
r
g
r
u
p
o
a
o
c
l
i
e
n
t
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
,
 
,
 
"
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
V
i
n
c
G
r
u
p
o
C
l
i
=
"
 
&
 
M
e
.
C
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






E
x
i
t
 
S
u
b
:



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
 
3
0
7
5
 
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
d
a
s
t
r
o
 
d
e
 
C
l
i
e
n
t
e
 
i
n
v
á
l
i
d
o
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
 
T
i
p
o
D
o
c
u
m
e
n
t
o
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



I
f
 
M
e
.
T
i
p
o
D
o
c
u
m
e
n
t
o
 
<
>
 
"
C
P
F
"
 
A
n
d
 
M
e
.
T
i
p
o
D
o
c
u
m
e
n
t
o
 
<
>
 
"
C
n
p
j
"
 
T
h
e
n



 
 
 
 
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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



 
 
 
 
I
f
 
M
e
.
T
i
p
o
D
o
c
u
m
e
n
t
o
 
=
 
"
C
P
F
"
 
T
h
e
n



 
 
 
 
V
i
n
c
u
l
o
_
c
l
i
e
n
t
e
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



 
 
 
 
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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
l
s
e



 
 
 
 
V
i
n
c
u
l
o
_
c
l
i
e
n
t
e
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



 
 
 
 
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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
 
I
f



E
n
d
 
S
u
b








