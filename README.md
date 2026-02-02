# Video games and mental health project 
## Aims
The aim of this project is to investigate how gaming impacts mental health and social wellbeing. To investigate this, the data will be split into different tables in MySQL based on anxiety disorder (GAD), satisfaction with life score (SWL), Narcisism and social phobia inventory score (SPIN) in distinct categories. This includes:
-	Comparing scores with those that played multiplayer with friends, acquaintances, or strangers and singleplayer
-	Why do people like to game? Does this effect scores?
-	Do hours play per week effect score?
-	An overview of the demographic details of the dataset


## Methods
### Data cleaning in Excel
- Each column was formatted to the correct data type
- Columns were removed that were not relevant to analysis- timestamp, league data, streams etc.
- Checked for duplicates and used data validation to ensure values fit within expected ranges
- Spell check for playstyle- made sure to make sure key terms were spelled correctly for MySQL manipulation
- Certain terms changed e.g. soloqueue to multiplayer
- Made the deciison to split the data into two tables. This was because not everyone who answered the GAD and SWL questions answered the SPIN questions, allowed for NA values to be removed.

### Manipulating the data in MySQL (shown in screenshots)
- Both tables were imported into a schema as CSV files
- Changed S. No. to ID to avoid encoding issues when importing the data
- Tables were joined using a left join, to match the GAD/SWL tabble with the corresponding SPIN based on ID number
- Separate tables were created to find average scores per variable. Wildcards were using to split written answers based on key themes e.g. play for fun
- Each were exported as CSVs 

### Dashboard created in PowerBI
- Dashboard was drafted out as two pages: one featuring demographic details and another with the score data
- Set measures using the COUNT, CALCULATE and DIVIDE measures
- The grouping button was used to sort participants into age groups

## Outcomes
- Those who play multiplayer games on average have higher SWL score whereas SPIN is higher in those that play single player
- Higher anxiety in singleplayer participants on average but not by much
- Those who play "to escape" showed higher SPIN as well as those who play to improve. No GAD shown in those that play "to waste time"
- Trend with hours and scores is not as clear. Dramatic increase in SWL is shown with more hours per week
- SPIN highest for Skyrim and Diablo 3
- The dataset lacked diversity in age, gender, and location- 94% male, 4568 participants from USA and majority fitting within the 18-24 age group
- inconsistent entries mean data analysis may be inaccurate- wildcard search may have missed certain entries

## Future Work
- Using python to get more specific values such as to see the correlation for the hours vs scores graph or to see if results are statistically significant.
- A map for PowerBi would have been the preferred way to show location data
