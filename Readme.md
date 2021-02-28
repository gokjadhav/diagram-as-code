*This project holds the docker setup for diagram as code.  It is just for your convenience and quick setup you can use this.*

**The official documention from mingrammer is here : https://diagrams.mingrammer.com & https://github.com/mingrammer/diagrams**


##How to setup and run :
1. Make sure you have docker preinstalled.
2. Run docker-compose up -d
3. Write your python code in ./src folder
4. Then finally run the following script `./genearte-image.sh <filename.py>`
Example: ```./genearte-image.sh simple_diagram.py```
5. Well that is all, now you have image genearted in the root of your project directory.