Attribute VB_Name = "Module1"
Sub totalvolume()

 

    For Each ws In Worksheets

 

        ws.Cells(1, 9).Value = "Ticker"

        ws.Cells(1, 10).Value = "Yearly Change"

        ws.Cells(1, 11).Value = "Percent Change"

        ws.Cells(1, 12).Value = "Total Stock Volume"

        ws.Cells(2, 15).Value = "Greatest % Increase"

        ws.Cells(3, 15).Value = "Greatest % Decrease"

        ws.Cells(4, 15).Value = "Greatest Total Volume"

        ws.Cells(1, 16).Value = "Ticker"

        ws.Cells(1, 17).Value = "Value"

 

        lastrow = ws.Cells(Rows.Count, 1).End(xlUp).Row

        tickernum = 1

 

        yearopen = ws.Cells(2, 3).Value

 

        For i = 2 To lastrow

 

            TotalSV = TotalSV + ws.Cells(i, 7).Value

 

            If ws.Cells(i + 1, 1).Value <> ws.Cells(i, 1).Value Then

 

            yearclose = ws.Cells(i, 6).Value

 

            yearlychange = yearclose - yearopen

 

            If yearopen = 0 Then

                percentchange = 0

            Else

                percentchange = yearlychange / yearopen

            End If

 

            tickernum = tickernum + 1

 

            yearopen = ws.Cells(i + 1, 3).Value

 

            ws.Cells(tickernum, 9).Value = ws.Cells(i, 1).Value

            ws.Cells(tickernum, 10).Value = yearlychange

            If yearlychange < 0 Then

                ws.Cells(tickernum, 10).Interior.ColorIndex = 3

            Else

                ws.Cells(tickernum, 10).Interior.ColorIndex = 4

            End If

 

            ws.Cells(tickernum, 11).Value = percentchange

            ws.Cells(tickernum, 11).Style = "Percent"

            ws.Cells(tickernum, 12).Value = TotalSV

 

            If percentchange > GreatIn Then

                GreatIn = percentchange

                tickergreatin = ws.Cells(i, 1).Value

            End If

 

            If percentchange < GreatDe Then

                GreatDe = percentchange

                tickergreatDe = ws.Cells(i, 1).Value

            End If

 

            If TotalSV > GreatVol Then

                GreatVol = TotalSV

                tickergreatVol = ws.Cells(i, 1).Value

            End If

 

            TotalSV = 0

 

        End If

 

    Next i

 

        ws.Cells(2, 16).Value = tickergreatin

        ws.Cells(2, 17).Value = GreatIn

        ws.Cells(2, 17).Style = "Percent"

        ws.Cells(3, 16).Value = tickergreatDe

        ws.Cells(3, 17).Value = GreatDe

        ws.Cells(3, 17).Style = "Percent"

        ws.Cells(4, 16).Value = tickergreatVol

        ws.Cells(4, 17).Value = GreatVol

 

  Next ws

 

End Sub
