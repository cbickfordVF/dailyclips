
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="https://code.jquery.com/resources/demos/style.css">

<script>
  $( function() {
    $( "#datepicker" ).datepicker({dateFormat: 'MM d, yy'});
  } );
</script>

<style>
  body {
    font-size: 13px;
    font-family: Arial, "Helvetica Neue", Helvetica, sans-serif;
  }
  .titleField {
    font-weight: bold;
    text-align:right;
  }
</style>

<form action="" method="post">
  <table>
    <tr>
      <td class="titleField">Date:</td>
      <cfoutput>
        <td><input type="text" id="datepicker" size="10" value="#dateformat(now()-2, "mmmm d, yyyy")#" name="date"></td>
      </cfoutput>
    </tr>
    <tr>
      <td class="titleField">Outlet:</td>
      <td><input type="text" name="outlet" size="98"></td>
    </tr>
    <tr>
      <td class="titleField">Title:</td>
      <td><input type="text" name="title" size="98"></td>
    </tr>
    <tr>
      <td class="titleField">Weblink:</td>
      <td><input type="text" name="weblink" size="98"></td>
    </tr>
    <tr>
      <td class="titleField" valign="top">Copy:</td>
      <td><textarea name ="copy" rows="20" cols="100"></textarea></td>
    </tr>
    <tr><td></td><td><input type="Submit" name="submit" value="Submit"></td></tr>
  </table>
</form>

<cfparam name="form.outlet" default="">
<cfparam name="form.title" default="">
<cfparam name="form.date" default="">
<cfparam name="form.copy" default="">
<cfparam name="form.weblink" default="">
<cfparam name="form.submit" default="">

<cfif len(form.submit)>
  <hr>
  <cfoutput>
    <h2>#outlet#: <a href="#weblink#" target="_blank">#title#</a></h2>
    <p>#date#</p>
    <cfset newLine = Chr(13) & Chr(10)>
      #Replace(form.copy, newLine, "<br>", "ALL")#
  </cfoutput>
</cfif>
