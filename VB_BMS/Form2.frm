VERSION 5.00
Begin VB.Form F_index 
   Caption         =   "��ҳ"
   ClientHeight    =   9000
   ClientLeft      =   225
   ClientTop       =   855
   ClientWidth     =   11985
   LinkTopic       =   "Form2"
   Picture         =   "Form2.frx":0000
   ScaleHeight     =   9000
   ScaleWidth      =   11985
   StartUpPosition =   3  '����ȱʡ
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "������鼮�����ǻ۵�Կ��"
      BeginProperty Font 
         Name            =   "������κ"
         Size            =   15
         Charset         =   134
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00004000&
      Height          =   315
      Left            =   7320
      TabIndex        =   1
      Top             =   8160
      Width           =   3780
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "��ӭ����ͼ�����ϵͳ"
      BeginProperty Font 
         Name            =   "����"
         Size            =   24
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   3592
      TabIndex        =   0
      Top             =   720
      Width           =   4800
   End
   Begin VB.Menu index 
      Caption         =   "�˵�"
      Begin VB.Menu login 
         Caption         =   "��½"
      End
      Begin VB.Menu return 
         Caption         =   "����"
      End
      Begin VB.Menu allbooks 
         Caption         =   "ͼ�����"
      End
      Begin VB.Menu borrowed 
         Caption         =   "�ѽ��ѯ"
      End
      Begin VB.Menu self 
         Caption         =   "��������"
      End
      Begin VB.Menu find_borrow 
         Caption         =   "ͼ���ѯ����"
      End
   End
End
Attribute VB_Name = "F_index"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub borrow_Click()

End Sub

Private Sub allbooks_Click()
F_allbooks.Show
Me.Hide
End Sub



Private Sub borrowed_Click()
F_borrowed.Show
Me.Hide
End Sub

Private Sub find_borrow_Click()
F_find_borrow.Show
Me.Hide

End Sub

Private Sub login_Click()
F_login.Show
Me.Hide
End Sub

Private Sub return_Click()
F_return.Show
Me.Hide
End Sub

Private Sub self_Click()
F_self.Show
Me.Hide
End Sub
