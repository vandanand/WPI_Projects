# Travel Itinerary
When looking at vacation trips, people tend to look at the most affordable and cost efficient method. The Travel Itinerary application will allow people to choose the best travel plan. 

A financial budgeting database is implemented that includes five main features such as the location, restaurants, tourist attractions, transportations and shopping centers of the desired vacation destination. Every feature includes several choices with different prices. For example, the transportation department can provide several modes of transportations like train, bus, airplane, and bike with different prices. 

No matter what travel combination the customers choose, the database will calculate the total amount of money. The application also provides the rating of shopping malls, tourist attractions and restaurants that can be sorted from the highest score to the lowest score. Thus, customers can compare different combinations of prices as well as rankings and choose the best plan according to their preference. 

# Demo
View the demo video: [Travel Itinerary App Demo](Final_Travel_App_Demo.mov)

# Tutorial
In order to launch the project locally and interact with the application or make changes, please refer to the following steps:

1. Clone or download the project.
2. Open the project in Android Studio.
3. Make sure to have [Gradle](https://gradle.org/install/) installed and configured in order to build the project once performing step 2. 
4. Go to File, and then Sync Project with Gradle Files.
5. Next to the area where the current selected file locations shows, make sure 'app' and beside that 'Pixel 2 API 24' are selected in the provided drop downs. Beside that, there is a green play button that can be clicked to run the application.
6. The Android phone should then show up displaying the customer page. The application is now running!

# Project Directory
* app/src/main
  * AndroidManifest.xml - contains the registration of all XML files in the application such as shopping.xml, restaurant.xml, etc. 
  * assets
    * travelItinerary.DB - database file with all the data for travel entertainment, dining, lodging, locations, and transportation
  * java
    * com/example/travel_itinerary
      * command
        * DBConstant.java - contains the location of the travelItinerary.DB database file
        * SQLCommand.java - list of SQL Query commands used in the application
      * util
        * DBOpenHelper.java - opens the database file
        * DBOperator.java - parses the database file
      * view
        * TableView - sets up a table view to see the SQL query output when clicking on a button in the user interface
      * Attractions.java - Attractions page navigation, handling onClick events, and SQL Query execution
      * Hotels.java - Same as above but for Hotels
      * Restaurants.java - Same as above but for Restaurants
      * Shopping.java - Same as above but for Shopping
      * Transportation.java - Same as above but for Transportation
      * Itinerary.java - Displaying the final selected itinerary
      * MainActivity.java - Launches the application, intializes all the above java classes, and displays the starting screen, the customer page 
  * res
    * layout
      * customer.xml - contains the Customer page layout 
      * attractions.xml - contains the Attractions page layout 
      * hotels.xml - contains the Hotels page layout 
      * restaurants.xml - contains the Restaurants page layout
      * shopping.xml - contains the Shopping page layout 
      * transportation.xml - contains the Transportation page layout 
      * itinerary.xml - contains the Itinerary page layout 
    * values
      * array.xml - contains the spinner location selection values on the customer page
      * strings.xml - contain all the variable definitions used for id's of buttons, scrollviews, etc.
