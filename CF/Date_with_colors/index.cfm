<cfoutput>
    <!DOCTYPE html>
    <html>
        <head>
            <title>Date_with_time</title>
            <link rel="stylesheet" href="./assets/css/style.css">
        </head>
        <body>
            <div class="container p-5 mt-5 w-50" style="border: 20px solid ##4b0471;background-color:slateblue;">
                <div class="row align-items-start">
                    <div class="text-center fs-2 fw-bold my-1" style="color:aliceblue;font-family: Arial, Helvetica, sans-serif;"><u>Date with colors</u></div>
                </div>
                <cfset today=now()>
                <cfset date=#datePart('d',today)#>
                <cfset todaymonth= #datePart("m",today )#>
                <cfset today_day= #datePart("w", today)#>
                <cfset today_year=#datePart("yyyy", today)#>
                
                <cfset month_as_string=monthAsString(todaymonth)>
                <cfset daysInmonth=daysInMonth(today)>
                
                <cfset remaining=daysInMonth-date>
                <cfset lastday=today_day+remaining>
                <cfset daysAsstring=dayOfWeekAsString(lastday)>  
                <cfif today_day LT 4>
                    <cfset diff=4-today_day>
                <cfelse>
                    <cfset diff=today_day-4>
                </cfif>
                
                <cfset Add=date+diff-7>
                <cfset lastwed=dateFormat(createDate(today_year, todaymonth, Add),"long")>

                
                <cfset day1=dateFormat(dateAdd('d', -1, today),"full")>
                <cfset day2=dateFormat(dateAdd('d', -2, today),"full")>
                <cfset day3=dateFormat(dateAdd('d', -3, today),"full")>
                <cfset day4=dateFormat(dateAdd('d', -4, today),"full")>
                <cfset day5=dateFormat(dateAdd('d', -5, today),"full")>
               
                
                <div class="row mb-3 mt-5">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <p style="color:white;" class="text-center">Today's Date: #dateFormat(today,"long")#</p>
                        <p style="color:white;"class="text-center">Current month in numeric: #datePart("m", today)#</p>
                        <p style="color:white;" class="text-center">Current month in word:  #month_as_string#</p>
                        <p style="color:white;" class="text-center">Last Wednesday Date: #lastwed#</p>
                        <p style="color:white;" class="text-center">Last Day of Month: #daysAsstring# </p>
                    </div>
                </div>

                <div class="row mb-3 mt-5">
                    <div class="col-md-3"></div>
                    <div class="col-md-6">
                        <p class="text-center fs-5 fw-bold my-1 mb-5"style="color:aliceblue;font-family: Arial, Helvetica, sans-serif;"><u>Last 5 days Date and Day:</u></p>
                        <p class="#lcase(dayOfWeekAsString(dayOfWeek(day1)))# text-center">#day1#</p>
                        <p class="#lcase(dayOfWeekAsString(dayOfWeek(day2)))# text-center">#day2#</p>
                        <p class="#lcase(dayOfWeekAsString(dayOfWeek(day3)))# text-center">#day3#</p>
                        <p class="#lcase(dayOfWeekAsString(dayOfWeek(day4)))# text-center">#day4#</p>
                        <p class="#lcase(dayOfWeekAsString(dayOfWeek(day5)))# text-center">#day5#</p>
                    </div>
                </div>
            </div>
        </body>
    </html>
    <style>
        .sunday {
            color: red ;
        }
        .monday{
            color: green ;
        }
        .tuesday{
            color: orange;
        }
        .wednesday{
            color: yellow;
        }
        .thursday{
            color:  bold black;
        }
        .friday{
            color: blue;
        }
        .saturday{
            color: bold red;
        } 
    </style>
</cfoutput>
               

               
                
                