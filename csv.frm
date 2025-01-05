VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} UserForm1 
   Caption         =   "UserForm1"
   ClientHeight    =   8064
   ClientLeft      =   108
   ClientTop       =   456
   ClientWidth     =   12756
   OleObjectBlob   =   "csv.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "UserForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Sub ImportCSVFile()
    Dim ws As Worksheet
    Dim csvFile As String
    Dim fileContent As String
    Dim fileLine As String
    Dim parsedLine As Variant
    Dim rowNum As Long
    
    ' Selecionar o arquivo CSV
    With Application.FileDialog(msoFileDialogFilePicker)
        .Title = "Selecione um arquivo CSV"
        .Filters.Add "CSV Files", "*.csv", 1
        .AllowMultiSelect = False
        
        If .Show <> -1 Then Exit Sub ' Cancelado pelo usuário
        csvFile = .SelectedItems(1)
    End With
    
    ' Abrir o arquivo para leitura
    Open csvFile For Input As #1
    
    ' Configurar a planilha
    Set ws = ThisWorkbook.Sheets.Add
    ws.Name = "Dados CSV"
    rowNum = 1
    
    ' Ler o arquivo linha por linha
    Do While Not EOF(1)
        Line Input #1, fileLine
        parsedLine = Split(fileLine, ",")
        
        ' Inserir os dados na planilha
        ws.Rows(rowNum).Value = parsedLine
        rowNum = rowNum + 1
    Loop
    
    ' Fechar o arquivo
    Close #1
    
    MsgBox "Arquivo CSV importado com sucesso!", vbInformation
End Sub

Private Sub UserForm_Click()
ImportCSVFile
End Sub
