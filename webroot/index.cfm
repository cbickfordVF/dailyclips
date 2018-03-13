

<form action="" method="post">
  <table>

    Outlet: article Title  <-- linked

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

<cfparam name="form.submit" default="">
<cfif len(form.submit)>
  <hr>
  <cfoutput>
    <h2>Outlet</h2>
    <br>
    <h2>Title</h2>

    <p>Copy</p>


    #htmlCodeFormat('<b>#form.title#</b>')#
  </cfoutput>
</cfif>
