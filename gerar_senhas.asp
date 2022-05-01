<%
Function GeraSenha()
quatronumeros=0
quatroletras=0
Senha = ""
for i=0 to 14
Randomize
l=CInt(45*Rnd)

If i<=3 Then
If l<=25 Then
quatroNumeros=1
Else
quatroLetras=1
End If
Else
If quatroNumeros=0 and l>25 Then
l = CInt(25*Rnd)
if i=5 Then
quatroNumeros = 1
End If
End if
If quatroLetras=0 and l<=25 Then
l=CInt(25+20*Rnd)
If i=5 Then
quatroLetras=1
End IF
End If
End if
select case l
case 0: Senha = Senha & "A"
case 1: Senha = Senha & "b"
case 2: Senha = Senha & "C"
case 3: Senha = Senha & "d"
case 4: Senha = Senha & "E"
case 5: Senha = Senha & "f"
case 6: Senha = Senha & "G"
case 7: Senha = Senha & "h"
case 8: Senha = Senha & "I"
case 9: Senha = Senha & "j"
case 10: Senha = Senha & "K"
case 11: Senha = Senha & "l"
case 12: Senha = Senha & "M"
case 13: Senha = Senha & "n"
case 14: Senha = Senha & "O"
case 15: Senha = Senha & "p"
case 16: Senha = Senha & "Q"
case 17: Senha = Senha & "r"
case 18: Senha = Senha & "S"
case 19: Senha = Senha & "t"
case 20: Senha = Senha & "U"
case 21: Senha = Senha & "v"
case 22: Senha = Senha & "W"
case 23: Senha = Senha & "x"
case 24: Senha = Senha & "Y"
case 25: Senha = Senha & "z"
case 26,36: Senha = Senha & "0"
case 27,37: Senha = Senha & "1"
case 28,38: Senha = Senha & "2"
case 29,39: Senha = Senha & "3"
case 30,40: Senha = Senha & "4"
case 31,41: Senha = Senha & "5"
case 32,42: Senha = Senha & "6"
case 33,43: Senha = Senha & "7"
case 34,44: Senha = Senha & "8"
case 35,45: Senha = Senha & "9"
case Else: Senha=Senha+"*"
End Select
Next
GeraSenha = Senha
End Function
%>
