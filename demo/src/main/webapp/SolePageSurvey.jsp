<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Sole page survey</title>
</head>
<body>
<h1>This is test sole page survey</h1>
<form action="/results" method="POST">
  <h3>Do you like Prog.Academy?</h3>
  <input type="radio" name="question1_group" id="question1option1" value="question1option1">
  <label for="question1option1">Yes</label>
  <br>
  <input type="radio" name="question1_group" id="question1option2" value="question1option2">
  <label for="question1option2">Yes, of course</label>
  <br>
  <h3>Will you quit studying at this stage?</h3>
  <input type="radio" name="question2_group" id="question2option1" value="question2option1">
  <label for="question2option1">Definitely no</label>
  <br>
  <input type="radio" name="question2_group" id="question2option2" value="question2option2">
  <label for="question2option2">It is too late, I am almost a programmer</label><br><br>
  <button id="submitResults" type="submit" value="submit">Submit results</button>
</form>
<br>
<a href='/index.html'>
  <button type=submit>Return to previous page</button>
</a>
</body>
</html>
