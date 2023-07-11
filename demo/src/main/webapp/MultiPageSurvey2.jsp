<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Multi page survey</title>
</head>
<body>
<h1>This is test sole page survey. Question 2</h1>
<form action="/results" method="POST">
  <h3>Will you quit studying at this stage?</h3>
  <input type="radio" name="question2_group" id="question2option1" value="question2option1">
  <label for="question2option1">Definitely no</label>
  <br>
  <input type="radio" name="question2_group" id="question2option2" value="question2option2">
  <label for="question2option2">It is too late, I am almost a programmer</label><br><br>
  <button id="submitResults" type="submit" value="submit">Submit results</button>
</form>
<br>
<a href='/MultiPageSurvey1.jsp'>
  <button type=submit>Return to previous page</button>
</a>
</body>
</html>