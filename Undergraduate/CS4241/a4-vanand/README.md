Assignment 4 - Creative Coding: Interactive Multimedia Experiences
===

Readme 
---

## Historical Population Data Comparing 3 of Most Populous Countries in the World: China, India, and the United States

https://a4-vanand23.glitch.me/

Created a D3.js visualization of the 3 most populated countries, China, India, and the US using historical population data ranging from to 1960 to 2018 from [Awesome JSON Datasets](https://github.com/jdorfman/Awesome-JSON-Datasets).

- The goal is to be able to interactively analyze the historical population data as well as make predictions about how the population will grow and affect the future of the world. 
- The challenge of this project was to figure out the topic and the technology I wanted to use. After I narrowed it down to data visualization and using D3.js, I had to find out what story I wanted to convey to the user. I came across the Awesome JSON Datasets website mentioned above and found my inspiration to depict historical population data of the 3 most populated countries as well as add user interactions to help analyze the data. 
- I used various JS linters for making sure the code structure is acceptable. I used the standard javascript linter to make sure the spacing, curly brackets, and semicolons were accurate in my files. I also used eslint to ensure additional accuracy in the program's code structure. 

Requirements Satisfied
---

- A server created using Express for basic file delivery and middleware. Your middleware stack should include the `compression` and `helmet` [middlewares]((https://expressjs.com/en/resources/middleware.html)) by default. ✔
- A client-side interactive experience using at least one of the web technologies frameworks we discussed in class.
  - [Three.js](https://threejs.org/): A library for 3D graphics / VR experiences
  - [D3.js](https://d3js.org): A library that is primarily used for interactive data visualizations ✔
  - [Canvas](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API): A 2D raster drawing API included in all modern browsers
  - [SVG](https://developer.mozilla.org/en-US/docs/Web/API/Canvas_API): A 2D vector drawing framework that enables shapes to be defined via XML.
  - [Web Audio API](https://developer.mozilla.org/en-US/docs/Web/API/Web_Audio_API): An API for audio synthesis, analysis, processing, and file playback.
- A user interface for interaction with your project, which must expose at least six parameters for user control. ✔
- Your application should display basic documentation for the user interface when the application first loads. This documentation should be dismissable, however, users should be able to redisplay it via a help buton. ✔
- Your application should feature at least two different ES6 modules that you write ([read about ES6 modules](https://www.sitepoint.com/understanding-es6-modules/)) and include into a main JavaScript file. This means that you will need to author *at least three JavaScript files* (a `app.js` or `main.js` file and two modules). ✔
- You are required to use a linter for your JavaScript. ✔
- Your HTML and CSS should validate. ✔

## Technical Achievements
- **Tech Achievement 1**: I visualized multiple datasets: [China Dataset](http://api.worldbank.org/countries/CHN/indicators/SP.POP.TOTL?per_page=5000&format=json), [India Dataset](http://api.worldbank.org/countries/IND/indicators/SP.POP.TOTL?per_page=5000&format=json), [US Dataset](http://api.worldbank.org/countries/USA/indicators/SP.POP.TOTL?per_page=5000&format=json), using different visualization techniques provided by D3 such as brushing to select a specific timeframe to view in the line graph. 
- **Tech Achievement 2**: Learned a new data visualization application called Vega to create a pie chart comparing populations in China, India, and the US versus other countries. 

### Design/Evaluation Achievements
- **Design Achievement 1**: I tested the application with 5 users and found that having the instructions pop up open right when the page is launched is very helpful to immediately learn the interactive user controls. They also liked the brushing technique used in the line graphs and being able to download the new Pie Chart display created by the user. 
