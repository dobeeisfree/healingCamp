<%

' 변수 준비
Dim strWOrder, strDSQ, strCNT
Dim objRsWO, objDir, objCNT, u_index
Dim rsCount, arrDiaryName(), i

u_index = Session("index")

If u_index = "" Then
Else
  ' 유저가 있을 때
  strConn = connectionString


  ' 먼저 user가 참여한 diary_index와 교환순서를 받아온다
  Set objRsWO = Server.CreateObject("ADODB.Recordset")
  strWOrder = "select diary_index, writer_order from collaboraters where user_index = '"& u_index &"';"
  objRsWO.Open strWOrder, strConn

  ' RecordCount 지원이 안되므로
  ' 직접 , 유저가 가진 다이어리를 카운트
  Set objCNT = Server.CreateObject("ADODB.Recordset")
  strCNT = "select count(*) cnt from collaboraters where user_index = '"& u_index &"';"
  objCNT.Open strCNT, strConn
  rsCount = objCNT("cnt")

  objCNT.Close
  Set objCNT = Nothing


  ' diary의 교환순서와 user의 교환순서를 비교한다.
  ' 다이어리가 있다면
  ' 이름 출력
  Redim arrDiaryName(rsCount)
  i = 0
  If NOT objRsWO.EOF Then
    Do Until objRsWO.EOF

      Set objDir = Server.CreateObject("ADODB.Recordset")
      strDSQL = "select d.diary_name " &_
                "from diaries d, write_order o" &_
                " where o.diary_index = " & objRsWO("diary_index") &_
                " and o.current_num = " & objRsWO("writer_order") &_
                " and d.diary_index = o.diary_index;"
      objDir.Open strDSQL, strConn

      If objDir.EOF Then
      Else
        arrDiaryName(i) = objDir("diary_name")
      End If

      objDir.Close
      Set objRsDir = Nothing

      i = i + 1
      objRsWO.MoveNext

    Loop
  Else

  'Set arrDiaryName() = Nothing

  End IF

  ' arrDiaryName 배열
  ' 조회 테스트
  'For i=0 to rsCount step 1
  '  Response.Write arrDiaryName(i)
  'Next

End If


If u_index = "" Then
Else
  objRsWO.Close
  Set objRsWO = Nothing
End If
%>
