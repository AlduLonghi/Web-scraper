# BitDegree search-page scraper
![screenshot](./readme-media/spider-web.jpg) 
![screenshot](./readme-media/bitdegree-logo.png)

[![linters](https://img.shields.io/badge/Linters-Passing-brightgreen)]()
[![linters](https://img.shields.io/badge/Author-Aldana%20Longhi-blue)](https://github.com/AlduLonghi)


## What is Web scraping? 

Web scraping, also known as web data extraction, is the process of retrieving or “scraping” data from a website. Unlike the mundane, mind-numbing process of manually extracting data, web scraping uses intelligent automation to retrieve hundreds, millions, or even billions of data points from the internet’s seemingly endless frontier.

[scrapinghub](https://www.scrapinghub.com/what-is-web-scraping/)

## What does this Web scraper do? 

This a Web scraper specially built for collecting data from BitDegree's search page. The user will input the link from which he wants to scrap the information from and the program returns a file with the results.

![screenshot](./readme-media/file-screenshot.jpg)

## Built with: 

- Ruby

**Features**
- [RSpec](https://rspec.info/)
- [Nokogiri](https://nokogiri.org/)
- [Terminal-table](https://github.com/tj/terminal-table)
- [Rubocop](https://github.com/rubocop-hq/rubocop)

## How to use this scraper?

**Pre-requisites**

- Having [Ruby](https://www.ruby-lang.org/en/) installed on your machine.

- If you want to run the tests you should have [RSpec](https://rspec.info/) installed on your machine.

### Setting up instructions 

**In case you use Git**

1. Open terminal 

2. Run the following commands:

- git clone https://github.com/AlduLonghi/Web-scraper.git

- cd Web-scraper

- bin/main.rb

3. Follow the instructions.

**In case you don't use a control version system**

1. Go to [the repository](https://github.com/AlduLonghi/Web-scraper.git)

2. Press the green button that says "Code".

3. Press "Download zip".

4. Once downloaded, extract the files.

5. Right click on the folder, press "Open in terminal".

6. Run $ bin/main.rb

7. Follow the instructions.

### Running instructions

1. Go to [BitDegree](https://www.bitdegree.org/)

2. Search for something using the search bar (e.g. 'ruby').

3. Copy the link of the first page of the results.

4. Run the program.

5. When the program asks you for the link you will paste the link above mentioned.

6. When the program asks you for the name file you should choose whatever you want (e.g. 'ruby-data')

7. Once the program stops running you will see the output on the terminal with the collected info and you will have a file in the root directory containing all the info organized in a table.

![explanatory-gif](./readme-media/video-gif.gif)

## Author 

👤 **Aldana**
​

- Github: [@AlduLonghi](https://github.com/AlduLonghi)

- Twitter: [@AbrilLonghi](https://twitter.com/AbrilLonghi)

- Linkedin: [Aldana Abril Longhi](https://www.linkedin.com/in/aldana-abril-longhi-a842ba1a7/)

## Contributing 

- To contribute to this project:
- Fork this repository & clone locally.
- Create an upstream remote and sync your local copy.
- Create a new branch.
- Push your code to your origin repository.
- Create a new Pull Request .

## Show your support

Give a ⭐️ if you like this project!
​

## Acknowledgments

- The Odin Project.
- Microverse curriculum.



