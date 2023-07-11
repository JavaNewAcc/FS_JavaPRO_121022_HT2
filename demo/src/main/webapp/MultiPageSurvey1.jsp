<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Multi page survey</title>
</head>
<body>
<h1>This is test sole page survey. Question 1</h1>
<form action="/results" method="POST">
  <h3>Do you like Prog.Academy?</h3>
  <input type="radio" name="question1_group" id="question1option1" value="question1option1">
  <label for="question1option1">Yes</label>
  <br>
  <input type="radio" name="question1_group" id="question1option2" value="question1option2">
  <label for="question1option2">Yes, of course</label><br><br>
  <button id="submitResults" type="submit" value="submit">Submit results</button>
</form>
<br>
<a href='/index.html'>
  <button type=submit>Return to previous page</button>
</a>
</body>
</html>