# Data for User Study on Submissions for Alloy4Fun

```Classifications of submissions

 * **correct:** Correct submissions are semantically equivalent to the oracle.
 * **both:** Both submissions allow a combination of over- and underconstrained behavior.
 * **over:**  Overconstrained submissions prevent valid scenarios from being generated.
 * **under:** Underconstrained submissions allow invalid scenarios to be generated.
 * **syntax:** Syntax errors are formulas that fail to adhere to the grammar rules.
 * **type:**  Type errors are formulas that fail to adhere to the typecheck rules.
 * **empty:** Empy submissions are blank.
 * **mod:** Modification submissions change the structure of the base model from the Alloy4Fun exercise.

```Content

 * `Analysis`: This folders contains all of the Excel sheets analyizing the data as well as the processed data. Subfolders are broken down by research question and span the following:
    * **Model Overviews** This subfolder contains details about the size of the model's in the study as well as all oracles for the models in the study.
	  * **RQ1: What classification of submissions do users make?** This subfolder analyzes the general divisions of the different classifications.
  	* **RQ2: How often do users make the same submission?** This subfolder considers how often a submission is a duplicate of another submission. We consider two forms of equivalence: syntactic and semantic. _Syntactical duplicates_ covey the rate at which users literally write the same exact formula, while _semantic duplicates_ allow us to explore the rate at which users express the same underlying concept. 
  	* **RQ3: How effective is the Analyzer’s compilation error reports?** This subfolder focuses on attempts in which at least one invalid submission (syntax or type error) is made. This also includes looking at long (>5) subpaths of attempts in which the user keeps making submissions that fail to compile.
  	* **RQ4: How do users’ correct answers differ from the oracle?** This subfolder explores correct submissions. Oracles are written by an "expert" user while submissions are made by students learning Alloy. We focus heavily on the top submitted correct submissions for each exercise and explore the ways in which users frequently write correct formulas compared to the oracle.
  	* **RQ5: What mistakes do users make when writing formulas?** This subfolder looks at "hot hit" faulty submissions, which are submissions that at least 10 other users made. We filter these by type of fault (both, over and under) and investigate what mistakes users made by consdiering the edits we would need to make to transform the faulty submission into it's cloest correct submission. 
  	*** RQ6: How often are users “one” mistake away?** This subfolder analyzes all first order mutants of fault submissions. We check to see which mutants correct faulty models and learn from those patterns and how they relate to common mistakes found in RQ5.
  	* **RQ7: How do users respond to their mistakes?** This subfolder analyzes back to back edits on all edit paths.
 * `Attempts`: A benchmark of Alloy4Fun submissions set up to capture each attempt per exercise by a given user.  An attempt is the series of submissions within an edit path that the user makes for a specific exercise.
 * `Edit Paths`: A benchmark of Alloy4Fun submissions set up to capture each edit path created by a given user.  An edit path is the series of submissions a user makes starting with the starter model and ending with their last submission. Edit paths can contain submissions across multiple different exercises but are all within the same base model.
 * `SubmissionsbyClassification`: A benchmark of Alloy4Fun submissions set up by type of classification of a given submission.  A submission consists of the base model, the user’s current attempt for a specific exercise, and any helper predicates invoked.
