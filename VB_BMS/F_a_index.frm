VERSION 5.00
Begin VB.Form F_a_index 
   Caption         =   "����"
   ClientHeight    =   8505
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   12090
   LinkTopic       =   "Form1"
   Picture         =   "F_a_index.frx":0000
   ScaleHeight     =   8505
   ScaleWidth      =   12090
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command3 
      Caption         =   "������ҳ"
      Height          =   615
      Left            =   7598
      Picture         =   "F_a_index.frx":36EDE
      TabIndex        =   2
      Top             =   5520
      Width           =   1455
   End
   Begin VB.CommandButton Command2 
      Caption         =   "ͼ�����"
      Height          =   615
      Left            =   5438
      Picture         =   "F_a_index.frx":6DDBC
      TabIndex        =   1
      Top             =   5520
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "�����û�����"
      Height          =   615
      Left            =   3038
      TabIndex        =   0
      Top             =   5520
      Width           =   1455
   End
End
Attribute VB_Name = "F_a_index"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
F_a_user.Show
Me.Hide
End Sub

Private Sub Command2_Click()
F_a_book.Show
Me.Hide
End Sub

Private Sub Command3_Click()
F_index.Show
Me.Hide
End Sub
