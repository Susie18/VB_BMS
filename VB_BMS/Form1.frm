VERSION 5.00
Begin VB.Form F_login 
   Caption         =   "��½"
   ClientHeight    =   8985
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11940
   BeginProperty Font 
      Name            =   "����"
      Size            =   12
      Charset         =   134
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   ForeColor       =   &H00FFFFFF&
   LinkTopic       =   "Form1"
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   8985
   ScaleWidth      =   11940
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command3 
      Caption         =   "��������"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   7800
      TabIndex        =   7
      Top             =   5160
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "����Ա��½"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6360
      TabIndex        =   6
      Top             =   5160
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "���ߵ�½"
      BeginProperty Font 
         Name            =   "����"
         Size            =   9
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   4920
      TabIndex        =   5
      Top             =   5160
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      Height          =   375
      IMEMode         =   3  'DISABLE
      Left            =   6000
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   4320
      Width           =   1740
   End
   Begin VB.TextBox Text1 
      Height          =   390
      Left            =   6000
      TabIndex        =   3
      Top             =   3465
      Width           =   1740
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "��  �룺"
      BeginProperty Font 
         Name            =   "��Բ"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   4920
      TabIndex        =   2
      Top             =   4440
      Width           =   1035
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "�û�����"
      BeginProperty Font 
         Name            =   "��Բ"
         Size            =   12
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   240
      Left            =   4920
      TabIndex        =   1
      Top             =   3600
      Width           =   1020
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "ͼ�����ϵͳ"
      BeginProperty Font 
         Name            =   "����"
         Size            =   42
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00008000&
      Height          =   840
      Left            =   3840
      TabIndex        =   0
      Top             =   1560
      Width           =   5040
   End
End
Attribute VB_Name = "F_login"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

Dim conn As ADODB.Connection
Dim rs As ADODB.Recordset
Dim stru$, strp$, strsql$
Static count As Byte
stru = Text1.text
strp = Text2.text
username = Text1.text

If stru = "" Then
MsgBox "�û�������Ϊ�գ��������û�����", , "��½����"
Text1.SetFocus
Exit Sub
ElseIf strp = "" Then
MsgBox "���벻��Ϊ�գ����������룡", , "��½����"
Text2.SetFocus
Exit Sub
End If
Set conn = New ADODB.Connection
Set rs = New ADODB.Recordset

conn.Open "provider=SQLOLEDB.1;datasource=(local);persist security info=false;integrated security=sspi;database=bms"


rs.Open "select * from ruser where ruser='" & stru & " 'and rpsw='" & strp & "'; ", conn

If rs.EOF Then
count = count + 1
MsgBox "�û��������ڻ����������", , "��¼ʧ��"
Text1.text = ""
Text2.text = ""
Text1.SetFocus
Else
logins = True
username = rs("ruser").Value
pass = rs("rpsw").Value
F_index.Show
Me.Hide
End If
rs.Close
conn.Close
Set rs = Nothing
Set conn = Nothing
If count >= 3 Then
MsgBox "������¼��������Ȩ��¼��ϵͳ��", , "��¼ʧ��"
End
End If
End Sub


Private Sub Command2_Click()

Dim conn As ADODB.Connection
Dim rs As ADODB.Recordset
Dim stru$, strp$, strsql$
Static count As Byte
stru = Text1.text
strp = Text2.text
If stru = "" Then
MsgBox "�û�������Ϊ�գ��������û�����", , "��½����"
Text1.SetFocus
Exit Sub
ElseIf strp = "" Then
MsgBox "���벻��Ϊ�գ����������룡", , "��½����"
Text2.SetFocus
Exit Sub
End If
Set conn = New ADODB.Connection
Set rs = New ADODB.Recordset

conn.Open "provider=SQLOLEDB.1;datasource=(local);persist security info=false;integrated security=sspi;database=bms"


rs.Open "select * from auser where auser='" & stru & " 'and apsw='" & strp & "'; ", conn

If rs.EOF Then
count = count + 1
MsgBox "�û��������ڻ����������", , "��¼ʧ��"
Text1.text = ""
Text2.text = ""
Text1.SetFocus
Else
logins = True
username = rs("auser").Value
pass = rs("apsw").Value
F_a_index.Show
Me.Hide
End If
rs.Close
conn.Close
Set rs = Nothing
Set conn = Nothing
If count >= 3 Then
MsgBox "������¼��������Ȩ��¼��ϵͳ��", , "��¼ʧ��"
End
End If
End Sub

Private Sub Command3_Click()
Text1.text = ""
Text2.text = ""
Text1.SetFocus
End Sub

