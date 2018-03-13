<form action="" method="post">
  <table>
  <tr>
    <td>Outlet:</td>
    <td><input type="text" name="outlet" size="98"></td>
  </tr>
  <tr>
    <td>Title:</td>
    <td><input type="text" name="title" size="98"></td>
  </tr>
  <tr>
    <td>Weblink:</td>
    <td><input type="text" name="weblink" size="98"></td>
  </tr>
  <tr>
    <td>Copy:</td>
    <td><textarea name ="copy" rows="20" cols="100"></textarea></td>
  </tr>
  <tr><td></td><td><input type="Submit" name="submit" value="Submit"></td></tr>
  </table>
</form>

<cfparam name="form.outlet" default="">
<cfparam name="form.title" default="">
<cfparam name="form.copy" default="">
<cfparam name="form.weblink" default="">
<cfparam name="form.submit" default="">

<cfif len(form.submit)>

  <style>
  body {
      font-size: 13px;
      font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
    }
  </style>
  <hr>
  <cfoutput>
    <h2>#outlet#: <a href="#weblink#" target="_blank">#title#</a></h2>
    <cfset newLine = Chr(13) & Chr(10)>
      #Replace(form.copy, newLine, "<br>", "ALL")#
  </cfoutput>
</cfif>
