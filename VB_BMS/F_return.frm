VERSION 5.00
Begin VB.Form F_return 
   Caption         =   "ͼ��黹"
   ClientHeight    =   9000
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   11970
   LinkTopic       =   "Form1"
   Picture         =   "F_return.frx":0000
   ScaleHeight     =   9000
   ScaleWidth      =   11970
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command2 
      Caption         =   "������ҳ"
      Height          =   495
      Left            =   5520
      TabIndex        =   5
      Top             =   5280
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   495
      Left            =   3840
      TabIndex        =   4
      Top             =   5280
      Width           =   975
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "������"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3480
      TabIndex        =   3
      Top             =   3360
      Width           =   1935
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "������黹��ţ�"
      Height          =   180
      Left            =   1800
      TabIndex        =   2
      Top             =   3480
      Width           =   1440
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "ͼ��黹��"
      Height          =   180
      Left            =   960
      TabIndex        =   1
      Top             =   2520
      Width           =   900
   End
   Begin VB.Label Label9 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Books Management System"
      BeginProperty Font 
         Name            =   "Harlow Solid Italic"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   540
      Left            =   6960
      TabIndex        =   0
      Top             =   1440
      Width           =   4860
   End
End
Attribute VB_Name = "F_return"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim time
time = Now

Dim conn As ADODB.Connection
Dim rs As ADODB.Recordset
Dim stru$, strp$, strsql$
   
Set conn = New ADODB.Connection
Set rs = New ADODB.Recordset

conn.Open "provider=SQLOLEDB.1;datasource=(local);persist security info=false;integrated security=sspi;database=bms"
rs.Open "select * from bor  ", conn
conn.Execute "UPDATE book SET exist = '��' WHERE bno = '" & Text1.text & "' "

conn.Execute "UPDATE bor SET returntime = '" & time & "' ,isreturn='��' WHERE bno = '" & Text1.text & "' "
MsgBox "����ɹ���"

End Sub
Private Sub Command2_Click()
F_index.Show
Me.Hide
End Sub
