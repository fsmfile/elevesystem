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
 
F
o
r
m
_
C
u
r
r
e
n
t
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






'
C
a
l
l
 
C
h
e
c
k
C
o
n
n
e
c
t
i
o
n






'
I
f
 
C
h
e
c
a
r
I
n
t
e
r
n
e
t
 
<
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
a
l
i
d
a
r
s
i
s
t
e
m
a
O
c
u
l
t
o
"



I
f
 
0
 
=
 
0
 
T
h
e
n






 
 
 
 
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
=
'
"
 
&
 
D
L
o
o
k
u
p
(
"
[
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
'
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
 
C
h
e
c
a
r
H
D






 
 
 
 
I
f
 
V
a
r
C
h
e
c
a
r
H
D
 
=
 
-
1
 
T
h
e
n






 
 
 
 
 
 
 
 
I
f
 
M
e
.
P
e
d
i
r
S
e
r
i
a
l
M
e
n
s
a
l
 
=
 
1
 
T
h
e
n



 
 
 
 
 
 
 
 
 
 
 
 
C
a
l
l
 
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l






 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
V
a
r
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l
 
=
 
-
1
 
T
h
e
n






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
C
a
l
l
 
C
h
e
c
a
r
B
l
o
q
u
e
i
o






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
V
a
r
C
h
e
c
a
r
B
l
o
q
u
e
i
o
 
=
 
0
 
T
h
e
n






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
A
b
r
i
r
L
o
g
i
n
 
=
 
-
1



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
l
s
e






 
 
 
 
 
 
 
 
 
 
 
 
C
a
l
l
 
C
h
e
c
a
r
B
l
o
q
u
e
i
o






 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
V
a
r
C
h
e
c
a
r
B
l
o
q
u
e
i
o
 
=
 
0
 
T
h
e
n






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
A
b
r
i
r
L
o
g
i
n
 
=
 
-
1






 
 
 
 
 
 
 
 
 
 
 
 
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
v
a
l
i
d
a
r
s
i
s
t
e
m
a
O
c
u
l
t
o
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
v
a
l
i
d
a
r
S
i
s
t
e
m
a
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
o
g
i
n
s
i
s
t
e
m
a
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
 
I
f






I
f
 
A
b
r
i
r
L
o
g
i
n
 
=
 
-
1
 
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
 
"
f
r
m
_
v
a
l
i
d
a
r
s
i
s
t
e
m
a
O
c
u
l
t
o
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
v
a
l
i
d
a
r
S
i
s
t
e
m
a
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
o
g
i
n
s
i
s
t
e
m
a
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
 
3
0
2
1
 
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
E
s
t
e
 
S
i
s
t
e
m
a
 
n
ã
o
 
e
s
t
á
 
R
e
g
i
s
t
r
a
d
o
 
p
a
r
a
 
n
e
n
h
u
m
 
c
l
i
e
n
t
e
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
 
e
n
t
r
e
 
e
m
 
c
o
n
t
a
t
o
 
c
o
m
 
o
 
n
o
s
s
o
 
a
t
e
n
d
i
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
v
a
l
i
d
a
r
S
i
s
t
e
m
a
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
i
m
 
B
o
x



D
o
C
m
d
.
S
h
o
w
T
o
o
l
b
a
r
 
"
r
i
b
b
o
n
"
,
 
a
c
T
o
o
l
b
a
r
N
o






E
n
d
 
S
u
b









'
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






'
 
 
 
 
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
 
n
u
m
e
r
a
c
a
o
h
d
s
e
r
v
e
r
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






'
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









 
 
 
 
'
C
a
l
l
 
M
y
S
Q
L
_
S
e
r
v
e
r
 
 
 
 
'
C
a
r
r
e
g
a
 
p
a
r
a
m
e
t
r
o
s
 
d
o
 
s
e
r
v
i
d
o
r






 
 
 
 
'
c
n
.
O
p
e
n
 
"
D
r
i
v
e
r
=
{
M
y
S
Q
L
 
O
D
B
C
 
5
.
3
 
A
N
S
I
 
D
r
i
v
e
r
}
;
S
e
r
v
e
r
=
"
 
&
 
M
y
s
l
q
S
e
r
v
i
d
o
r
 
&
 
"
;
D
a
t
a
b
a
s
e
=
"
 
&
 
M
y
s
l
q
D
a
t
a
b
a
s
e
 
&
 
"
;
U
s
e
r
=
"
 
&
 
M
y
s
l
q
U
s
u
a
r
i
o
 
&
 
"
;
 
P
a
s
s
w
o
r
d
=
"
 
&
 
M
y
s
l
q
S
e
n
h
a
 
&
 
"
 
;
O
p
t
i
o
n
=
3
;
"



 
 
 
 
'
r
s
t
.
C
u
r
s
o
r
L
o
c
a
t
i
o
n
 
=
 
a
d
U
s
e
C
l
i
e
n
t



 
 
 
 
'
r
s
t
.
O
p
e
n
 
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
 
n
u
m
e
r
a
c
a
o
h
d
s
e
r
v
e
r
=
1
2
3
4
5
6
"
,
 
c
n
,
 
a
d
O
p
e
n
D
y
n
a
m
i
c
,
 
a
d
L
o
c
k
O
p
t
i
m
i
s
t
i
c






 
 
 
 
'
M
e
.
t
x
t
N
u
m
e
r
a
c
a
o
H
D
S
e
r
v
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
M
e
.
t
x
t
N
u
m
e
r
a
c
a
o
H
D
S
e
r
v
 
=
 
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
2
2
)






 
 
 
 
'
M
s
g
B
o
x
 
t
x
t
N
u
m
e
r
a
c
a
o
H
D
S
e
r
v
e
r






 
 
 
'
 
r
s
t
.
C
l
o
s
e
 
 
 
 
'
f
e
c
h
a
 
o
 
r
e
c
o
r
s
e
t



 
 
 
'
 
c
n
.
C
l
o
s
e
 
 
 
 
'
f
e
c
h
a
 
o
 
b
a
n
c
o
 
d
e
 
d
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