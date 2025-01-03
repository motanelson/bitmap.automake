VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   6324
   ClientLeft      =   108
   ClientTop       =   456
   ClientWidth     =   13596
   OleObjectBlob   =   "grid.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Option Explicit

' Importação das funções da API GDI
Private Declare PtrSafe Function CreateSolidBrush Lib "gdi32" (ByVal crColor As Long) As LongPtr
Private Declare PtrSafe Function SelectObject Lib "gdi32" (ByVal hdc As LongPtr, ByVal hObject As LongPtr) As LongPtr
Private Declare PtrSafe Function Rectangle Lib "gdi32" (ByVal hdc As LongPtr, ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Private Declare PtrSafe Function DeleteObject Lib "gdi32" (ByVal hObject As LongPtr) As Long
Private Declare PtrSafe Function MoveToEx Lib "gdi32" (ByVal hdc As LongPtr, ByVal x As Long, ByVal y As Long, lpPoint As Any) As Long
Private Declare PtrSafe Function LineTo Lib "gdi32" (ByVal hdc As LongPtr, ByVal x As Long, ByVal y As Long) As Long
Private Declare PtrSafe Function GetDC Lib "user32" (ByVal hwnd As LongPtr) As LongPtr
Private Declare PtrSafe Function ReleaseDC Lib "user32" (ByVal hwnd As LongPtr, ByVal hdc As LongPtr) As Long
Private Declare PtrSafe Function GetActiveWindow Lib "user32" () As Long



Private Sub UserForm_Activate()
    Dim hdc As LongPtr
    Dim hBrush As LongPtr
    Dim oldBrush As LongPtr
    Dim a
    ' Obter o contexto de dispositivo (DC) do formulário
    Dim b
    a = DoEvents()
    'Me.Show
    
       
    hdc = GetDC(GetActiveWindow)

    ' Criar uma cor sólida (amarelo) para o retângulo
    hBrush = CreateSolidBrush(&HFFFF)
    oldBrush = SelectObject(hdc, hBrush)

    ' Desenhar o retângulo amarelo
    'Rectangle hdc, 0, 0, 800, 600

    ' Restaura o pincel antigo e libera recursos
    a = SelectObject(0, oldBrush)
    DeleteObject (hBrush)

    ' Desenhar o grid no formulário
    Call DrawGrid(hdc, 20, RGB(0, 0, 0))

    ' Liberar o contexto de dispositivo (DC)
    'ReleaseDC Me.hwnd, hdc
End Sub

Private Sub DrawGrid(hdc As LongPtr, spacing As Long, color As Long)
    Dim x As Long, y As Long
    Dim a
    ' Configurar a cor do grid
    Dim hPen As LongPtr, oldPen As LongPtr
    hPen = CreateSolidBrush(color)
    oldPen = SelectObject(hdc, hPen)

    ' Desenhar linhas horizontais
    For y = 0 To Me.Height * 10 Step spacing
        MoveToEx hdc, 0, y, ByVal 0
        LineTo hdc, Me.Width * 10, y
        
    Next y

    ' Desenhar linhas verticais
    For x = 0 To Me.Width * 10 Step spacing
        MoveToEx hdc, x, 0, ByVal 0
        LineTo hdc, x, Me.Height * 10
    Next x

    ' Restaurar o pincel antigo e liberar recursos
    a = SelectObject(hdc, oldPen)
    DeleteObject (hPen)
End Sub



Private Sub UserForm_Initialize()

End Sub
