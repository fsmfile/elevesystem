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
B
u
s
c
a
C
E
P
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
c
e
p
_
f
o
r
n
e
c
e
d
o
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
M
e
.
c
e
p
_
f
o
r
n
e
c
e
d
o
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
r
e
e
n
c
h
a
 
o
 
c
a
m
p
o
 
C
E
P
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
l
s
e









V
a
r
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
f
o
r
n
e
c
e
d
o
r






C
a
l
l
 
V
e
r
i
f
i
c
a
r
C
E
P






M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
V
a
r
L
o
g
r
a
d
o
u
r
o



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
V
a
r
B
a
i
r
r
o



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
V
a
r
M
u
n
i
c
i
p
i
o



M
e
.
E
s
t
a
d
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
V
a
r
U
F









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
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
)
 
A
n
d
 
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
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
)
 
A
n
d
 
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
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
)
 
T
h
e
n






M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
1
"
,
 
"
á
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
2
"
,
 
"
â
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
3
"
,
 
"
ã
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
7
"
,
 
"
ç
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
9
"
,
 
"
é
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
A
"
,
 
"
ê
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
D
"
,
 
"
í
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
3
"
,
 
"
ó
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
4
"
,
 
"
ô
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
5
"
,
 
"
õ
"
)



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
A
"
,
 
"
ú
"
)






M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
1
"
,
 
"
á
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
2
"
,
 
"
â
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
3
"
,
 
"
ã
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
7
"
,
 
"
ç
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
9
"
,
 
"
é
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
A
"
,
 
"
ê
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
D
"
,
 
"
í
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
3
"
,
 
"
ó
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
4
"
,
 
"
ô
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
5
"
,
 
"
õ
"
)



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
A
"
,
 
"
ú
"
)






M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
1
"
,
 
"
á
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
2
"
,
 
"
â
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
3
"
,
 
"
ã
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
7
"
,
 
"
ç
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
9
"
,
 
"
é
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
A
"
,
 
"
ê
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
E
D
"
,
 
"
í
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
3
"
,
 
"
ó
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
4
"
,
 
"
ô
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
5
"
,
 
"
õ
"
)



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
 
=
 
R
e
p
l
a
c
e
(
M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
,
 
"
%
F
A
"
,
 
"
ú
"
)






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
 
d
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
 
F
o
r
m
_
L
o
a
d
(
)



 
D
o
C
m
d
.
G
o
T
o
R
e
c
o
r
d
 
,
 
"
"
,
 
a
c
N
e
w
R
e
c



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
 
E
s
t
a
d
o
_
f
o
r
n
e
c
e
d
o
r
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






C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
r
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
P
e
s
s
o
a
_
f
o
r
n
e
c
e
d
o
r
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
 
M
e
.
T
i
p
o
_
P
e
s
s
o
a
_
f
o
r
n
e
c
e
d
o
r
.
V
a
l
u
e
 
=
 
"
P
e
s
s
o
a
 
F
í
s
i
c
a
"
 
T
h
e
n






M
e
.
C
N
P
J
_
f
o
r
n
e
c
e
d
o
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



M
e
.
T
e
l
_
f
o
r
n
e
c
e
d
o
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



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
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



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
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



M
e
.
E
s
t
a
d
o
_
f
o
r
n
e
c
e
d
o
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



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
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



M
e
.
R
a
z
a
o
_
S
o
c
i
a
l
_
f
o
r
n
e
c
e
d
o
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



M
e
.
I
n
s
c
r
i
ç
ã
o
_
E
s
t
a
d
u
a
l
_
f
o
r
n
e
c
e
d
o
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



M
e
.
I
n
s
c
r
i
ç
ã
o
_
M
u
n
i
c
i
p
a
l
_
f
o
r
n
e
c
e
d
o
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



M
e
.
E
_
m
a
i
l
_
f
o
r
n
e
c
e
d
o
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



M
e
.
C
o
n
t
a
t
o
_
f
o
r
n
e
c
e
d
o
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



M
e
.
T
e
l
_
c
o
n
t
a
t
o
_
f
o
r
n
e
c
e
d
o
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






'
M
e
.
C
e
l
u
l
a
r
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



'
M
e
.
C
P
F
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e






E
l
s
e






M
e
.
C
N
P
J
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
T
e
l
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
E
n
d
e
r
e
c
o
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
B
a
i
r
r
o
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
E
s
t
a
d
o
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
C
i
d
a
d
e
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
R
a
z
a
o
_
S
o
c
i
a
l
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
I
n
s
c
r
i
ç
ã
o
_
E
s
t
a
d
u
a
l
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
I
n
s
c
r
i
ç
ã
o
_
M
u
n
i
c
i
p
a
l
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
E
_
m
a
i
l
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
C
o
n
t
a
t
o
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e



M
e
.
T
e
l
_
c
o
n
t
a
t
o
_
f
o
r
n
e
c
e
d
o
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
 
T
r
u
e






'
M
e
.
C
e
l
u
l
a
r
_
f
o
r
n
e
c
e
d
o
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



'
M
e
.
C
P
F
_
f
o
r
n
e
c
e
d
o
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