/*
 * PA6.cpp
 *
 *  Created on: Feb 25, 2017
 *      Author: vanand
 */

#include <time.h>
#include <iostream>
#include <cstdlib>
#include <stdlib.h>
#include <typeinfo>
#include <vector>
#include <string>

/*
  #include "PA6.h"
  #include "Ant.h"
  #include "Doodlebug.h"
  #include "Organism.h"
*/
class Gameboard;//A prototype for the gameboard.
class Organism {
public:
  Organism( int b,std::string n,int xi, int yi) :starvingSteps(0),steps(0),breedSteps(b),name(n),x(xi),y(yi),TimetoBreed(1),starvinglmt(3){};
  virtual void move(Gameboard &board)=0;
  virtual void breed(Gameboard &board)=0;
  virtual bool isBreed()
  {if(TimetoBreed== breedSteps) 
      return true;
    else 
      return false;
  };
  
  bool isStarving(){if(starvingSteps >= starvinglmt) 
      return true;
    else
      return false;
  }
  std::string Name(){return name;};

  void SetLoc(int xi, int yi){x = xi; y = yi;};  
  int getLocx(){return x;}
  int getLocy(){return y;}
  void setLocx(int n){x = n;}
  void setLocy(int n){y = n;}
  void setSteps(int n){steps = n;}
  void setBSteps(int n){TimetoBreed = n;}
  int getSteps(){return steps;}
  int getBSteps(){return TimetoBreed;}
  //methods
  //virtual int antORdoodlebug()=0; //checks if ant or doodlebug
  int starvingSteps;
  ~Organism(){};
protected:
  int steps;
  int breedSteps;
  std::string name;
  int x,y;//location

  int TimetoBreed;
  //Gameboard *board;
  int starvinglmt;
};

class Ant: public Organism{
public:
  //variables
  Ant(int b,std::string n,int x,int y):Organism(b,n,x,y){};
  void move( Gameboard &board);
  void breed(Gameboard &board);
  ~Ant(){};
};


class DoodleBug: public Organism{
public:
  //variables
  DoodleBug(int b,std::string n,int x, int y):Organism(b,n,x,y){};
  void move( Gameboard &board);
  void breed(Gameboard &board);
  //starve is in Organism
  ~DoodleBug(){};
  
};

class Gameboard {

public:
  Gameboard(){};
  Gameboard(int x):size(x){};
  //	void PrintBoard();
  //	void RunTheGame();
  //	bool anySpotsAvailable(int x,int y);
  int numAnt;//when there are no organism
  int numDood;//Cannot initialize it.
  int totalAnt;
  int totalDood;
  //void initialize(int gridSize);
  //void printGameboard(int gridSize, int** A, int row, int column);
  int getSize(){return size;}
  void printGameboard();
  void changeLoc(int x1,int y1,int x2,int y2);
  ~Gameboard(){};
  //Organism* getOrganism(int x, int y);//Organism* or Organism&
  //void setOrganism(int x,int y,Organism *org);
  int steps;//current number of steps

  std::vector<Organism*> oBoard;
private:
  int size;

};

void Gameboard::printGameboard(){
  int row = size;
  for(int i=0; i<size; i++){
    for(int j=0; j<size; j++){
      if(oBoard[i*row+j] == NULL){
        //std::cout << 'E'<<i<<","<<j<<":";
        std::cout << '_';
      }
      else{

        if(oBoard[i*row+j]->Name() == "Ant")
          std::cout << 'o';
        else
          std::cout << 'x';
      }
    }
    std::cout << "\n";
  }
};

void Gameboard::changeLoc(int x1, int y1, int x2, int y2){

  int breadingsteps = oBoard[x1*size + y1]->getBSteps();
  int starvingsteps = oBoard[x1*size + y1]->starvingSteps + 1;
  if(oBoard[x1*size + y1]->Name() == "Ant")
    oBoard[x2*size + y2] =  new Ant(3,"Ant",x2,y2);

  if(oBoard[x1*size + y1]->Name() == "DB"){
    // if(oBoard[x2*size + y2] != NULL)
    // if(oBoard[x2*size + y2]->Name() == "Ant")
    //decrement Ant count

    if(starvingsteps >= 3){
      //dying of hunger oH cruel world.
      numDood-=1;
      oBoard[x1*size + y1] = NULL;
      return;
    }
      
    //reincarnation in a new place
    oBoard[x2*size + y2] =  new DoodleBug(8,"DB",x2,y2);
    oBoard[x2*size + y2]->starvingSteps = starvingsteps;
  }
  //Update time in the organism.
  //Used to avoid duplicate reproduction.
  oBoard[x2*size + y2]->setSteps(steps);
  oBoard[x2*size + y2]->setBSteps(breadingsteps+1);

  oBoard[x1*size + y1] = NULL;
  //Check if it is breading time.

  if(oBoard[x2*size + y2]->isBreed())
    oBoard[x2*size + y2]->breed(*this);

  return;
}

void DoodleBug::move(Gameboard &world){
  //My location is x,y
  //cols and rows are of board.size;

  std::vector<Organism*> & board = world.oBoard; //Convienence.
  int row = world.getSize();
  bool leftCol = (y == 0);//Not leftmost column. Probable left room.
  bool rightCol = (y == (row - 1));
  bool toprow = (x == 0);
  bool botrow = (x == (row - 1));
  
  //First see if there are one or more ants there.
  std::vector<int> spots;
  if((!leftCol) && (board[x*row+y - 1] != NULL))
    if(board[x*row+y - 1]->Name()== "Ant")
      spots.push_back(3); //left is 3
  if((!toprow) && (board[x*row+y - row]!= NULL))
    if(board[x*row+y - row]->Name()== "Ant")
      spots.push_back(1); //up is 1
  if((!rightCol) && (board[x*row+y + 1]!= NULL)) 
    if(board[x*row+y + 1]->Name()== "Ant")   
      spots.push_back(4); //right is 4
  if((!botrow) && (board[x*row+y + row]!= NULL))
    if(board[x*row+y + row]->Name()== "Ant")
      spots.push_back(2);//2 is down
 
  //If any ants available eat one randomly 
  //Should we count this step?
  if(spots.size()!=0) {
    int whichSpot=rand()%(spots.size());//size is a method of vector that returns
    int direction=spots.at(whichSpot);
    if(direction == 3){
      world.numAnt-=1;
      world.changeLoc(x,y,x,y-1);
      return;
    }
    if(direction == 1){
      world.numAnt-=1;
      world.changeLoc(x,y,x-1,y);
      return;
    }
    if(direction == 4){
      world.numAnt-=1;
      world.changeLoc(x,y,x,y+1);
      return;    
    }
    if(direction == 2){
      world.numAnt-=1;
      world.changeLoc(x,y,x+1,y);
      return;

    }
  }else { //No ants around. Move one random step.
    std::vector<int> spots;
    if((!leftCol) && (board[x*row+y - 1] == NULL))
      spots.push_back(3); //left is 3
    if((!toprow) && (board[x*row+y - row]== NULL))
      spots.push_back(1); //up is 1
    if((!rightCol) && (board[x*row+y + 1]== NULL)) 
      spots.push_back(4); //right is 4
    if((!botrow) && (board[x*row+y + row]== NULL))
      spots.push_back(2);//2 is down
    if(spots.size()==0)
      return;//surrounded by ants
    int whichSpot=rand()%(spots.size());//size is a method of vector that returns
    int direction=spots.at(whichSpot);
    if(direction == 3){
      world.changeLoc(x,y,x,y-1);
      return;
    }
    if(direction == 1){
      world.changeLoc(x,y,x-1,y);
      return;
    }
    if(direction == 4){
      world.changeLoc(x,y,x,y+1);
      return;    
    }
    if(direction == 2){
      world.changeLoc(x,y,x+1,y);
      return;
    }    
  }
  return;
}

void Ant::move(Gameboard &world){
  //My location is x,y
  //cols and rows are of board.size;

  std::vector<Organism*> & board = world.oBoard; //Convienence.
  int row = world.getSize();
  bool leftCol = (y == 0);//Not leftmost column. Probable left room.
  bool rightCol = (y == (row - 1));
  bool toprow = (x == 0);
  bool botrow = (x == (row - 1));
  //Randomize your choice here.
  std::vector<int> spots;
  if((!leftCol) && (board[x*row+y - 1]== NULL))
    spots.push_back(3); //left is 3
  if((!toprow) && (board[x*row+y - row]== NULL))
    spots.push_back(1); //up is 1
  if((!rightCol) && (board[x*row+y + 1]== NULL))    
    spots.push_back(4); //right is 4
  if((!botrow) && (board[x*row+y + row]== NULL))
    spots.push_back(2);//2 is down
 
  //If not spots available, stay aput.
  //Should we count this step?
  if(spots.size()==0)
    return;
  int whichSpot=rand()%(spots.size());//size is a method of vector that returns
  int direction=spots.at(whichSpot);
  if(direction == 3){
    world.changeLoc(x,y,x,y-1);
    return;
  }
  if(direction == 1){
    world.changeLoc(x,y,x-1,y);
    return;
  }
  if(direction == 4){
    world.changeLoc(x,y,x,y+1);
    return;    
  }
  if(direction == 2){
    world.changeLoc(x,y,x+1,y);
    return;

  }
  return;
}

void Ant::breed(Gameboard &world){
  //My location is x,y
  //cols and rows are of board.size;

  std::vector<Organism*> & board = world.oBoard; //Convienence.
  int row = world.getSize();
  int size  = world.getSize();
  bool leftCol = (y == 0);//Not leftmost column. Probable left room.
  bool rightCol = (y == (row - 1));
  bool toprow = (x == 0);
  bool botrow = (x == (row - 1));
  //Randomize your choice here.
  std::vector<int> spots;
  if((!leftCol) && (board[x*row+y - 1]== NULL))
    spots.push_back(3); //left is 3
  if((!toprow) && (board[x*row+y - row]== NULL))
    spots.push_back(1); //up is 1
  if((!rightCol) && (board[x*row+y + 1]== NULL))    
    spots.push_back(4); //right is 4
  if((!botrow) && (board[x*row+y + row]== NULL))
    spots.push_back(2);//2 is down
 
  //If not spots available, stay aput.
  //Should we count this step?
  if(spots.size()==0)
    return;
  int whichSpot=rand()%(spots.size());//size is a method of vector that returns
  int direction=spots.at(whichSpot);
  if(direction == 3){
    world.numAnt+=1;
    world.totalAnt+=1;
    board[x*size + y-1] =  new Ant(3,"Ant",x,y-1);
    //world.changeLoc(x,y,x,y-1);
    return;
  }
  if(direction == 1){
    world.numAnt+=1;
    world.totalAnt+=1;
    board[(x-1)*size + y] =  new Ant(3,"Ant",x-1,y);
    //world.changeLoc(x,y,x-1,y);
    return;
  }
  if(direction == 4){
    world.numAnt+=1;
    world.totalAnt+=1;
    board[x*size + y+1] =  new Ant(3,"Ant",x,y+1);
    // world.changeLoc(x,y,x,y+1);
    return;    
  }
  if(direction == 2){
    world.numAnt+=1;
    world.totalAnt+=1;
    board[(x+1)*size + y] =  new Ant(3,"Ant",x+1,y);
    //world.changeLoc(x,y,x+1,y);
    return;

  }
  return;
}


void DoodleBug::breed(Gameboard &world){
  //My location is x,y
  //cols and rows are of board.size;
 
  std::vector<Organism*> & board = world.oBoard; //Convienence.
  int row = world.getSize();
  int size  = world.getSize();
  bool leftCol = (y == 0);//Not leftmost column. Probable left room.
  bool rightCol = (y == (row - 1));
  bool toprow = (x == 0);
  bool botrow = (x == (row - 1));
  //Randomize your choice here.
  std::vector<int> spots;
  if((!leftCol) && (board[x*row+y - 1]== NULL))
    spots.push_back(3); //left is 3
  if((!toprow) && (board[x*row+y - row]== NULL))
    spots.push_back(1); //up is 1
  if((!rightCol) && (board[x*row+y + 1]== NULL))    
    spots.push_back(4); //right is 4
  if((!botrow) && (board[x*row+y + row]== NULL))
    spots.push_back(2);//2 is down
 
  //If not spots available, stay aput.
  //Should we count this step?
  if(spots.size()==0)
    return;
  int whichSpot=rand()%(spots.size());//size is a method of vector that returns
  int direction=spots.at(whichSpot);
  if(direction == 3){
    world.numDood+=1;
    world.totalDood+=1;
    board[x*size + y-1] =  new Ant(8,"DB",x,y-1);
    //world.changeLoc(x,y,x,y-1);
    return;
  }
  if(direction == 1){
    world.numDood+=1;
    world.totalDood+=1;
    board[(x-1)*size + y] =  new Ant(8,"DB",x-1,y);
    //world.changeLoc(x,y,x-1,y);
    return;
  }
  if(direction == 4){
    world.numDood+=1;
    world.totalDood+=1;
    board[x*size + y+1] =  new Ant(8,"DB",x,y+1);
    // world.changeLoc(x,y,x,y+1);
    return;    
  }
  if(direction == 2){
    world.numDood+=1;
    world.totalDood+=1;
    board[(x+1)*size + y] =  new Ant(8,"DB",x+1,y);
    //world.changeLoc(x,y,x+1,y);
    return;

  }
  return;
}



class PA6 {
public:
  int gridSize, ants, doodlebugs, time_steps, seed;

  PA6();
  virtual ~PA6();
};



using namespace std;

unsigned int irand(unsigned int n){
  return rand() %n;
}

int main(int argc, const char* argv[]){
  //below are all the specified default values
  int gridSize=20, ants=100, doodlebugs=20, time_steps=1000, seed=1,pause=0;
  //the user can enter any amount of arguments
  if(argc==7){
    gridSize = atoi(argv[1]);
    ants = atoi(argv[3]);
    doodlebugs = atoi(argv[2]);
    time_steps = atoi(argv[4]);
    seed = atoi(argv[5]);
    pause = atoi(argv[6]);
  }else if(argc==6){
    gridSize = atoi(argv[1]);
    ants = atoi(argv[3]);
    doodlebugs = atoi(argv[2]);
    time_steps = atoi(argv[4]);
    seed = atoi(argv[5]);
  }else if(argc==5){
    gridSize = atoi(argv[1]);
    ants = atoi(argv[3]);
    doodlebugs = atoi(argv[2]);
    time_steps = atoi(argv[4]);
  }else if(argc==4){
    gridSize = atoi(argv[1]);
    ants = atoi(argv[3]);
    doodlebugs = atoi(argv[2]);
  }else if(argc==3){
    gridSize = atoi(argv[1]);
    doodlebugs = atoi(argv[2]);
  }else if(argc==2){
    gridSize=atoi(argv[1]);
  }
  
  //Seed
  srand(seed);
  int timeout = gridSize * gridSize;//After so many tries, initialization will quit.

  //created a new gameboard named world
  Gameboard world(gridSize);
  world.numAnt=ants;
  world.numDood=doodlebugs;
  world.totalAnt=ants;
  world.totalDood=doodlebugs;
  world.oBoard.resize(gridSize*gridSize);
  //std::vector<Organism*> oBoard(gridSize*gridSize);
  std::vector<Organism*> & Board = world.oBoard; //Convienence.
  world.steps = 0;
  int row = gridSize;
  //Populate with doodlebug.
  int doodleOnBoard=0;
  while((doodleOnBoard<doodlebugs)&&(timeout>0)){
    int x= irand(gridSize);
    int y= irand (gridSize);
    if(Board[x*row+y] ==  NULL) {
      Board[x*row+y] = new DoodleBug(8,"DB",x,y);
    } else {
      --timeout;
      continue;//Try another random location without incrementing doodle count
    }
    doodleOnBoard++;
    --timeout;
  }
  //world.printGameboard();
  int antsOnBoard=0;
  timeout = gridSize * gridSize;
  while((antsOnBoard<ants)&&(timeout>0)){
    int x= irand(gridSize);
    int y= irand (gridSize);
    if(Board[x*row+y] ==  NULL) {
      Board[x*row+y] =  new Ant(3,"Ant",x,y);
    } else {
      --timeout;
      continue;//Try another random location without incrementing doodle count
    }
    antsOnBoard++;
      --timeout;
  }
  if(timeout == 0){
    cout <<"Cannot allocate board entries with the given configuration"<<endl;
    exit(1);
  }
  cout << "The Initial Board"<<endl;
  world.printGameboard();
  //Simulation time
  int stepsSimulated=0;
  for(int step=0; step < time_steps;step++){
    stepsSimulated=step;
    if(world.numAnt==0||world.numDood==0){
      continue;
    }
    for(int i=0; i<gridSize; i++){
      for(int j=0; j<gridSize; j++){
        if((Board[i*row+j] != NULL) && (Board[i*row+j]->getSteps() < step)){
               
          Board[i*row+j]->move(world);//breed, starve,eating happend after the move.
        }
      }
      //std::cout << "\n";
    }
         
    //Check for pause
    if(pause > 0) {
      if(step%pause == 0){
        world.printGameboard();
        char go;
        cin >> go;
      }
    }

  }
  cout << "\nThe Final Board "<<endl;
  world.printGameboard();
  std::cout<<"The initial configurations are as follows: gridsize= "<<gridSize<<", number of doodlebugs= "<<doodlebugs<<std::endl;
  std::cout<<" number of Ants= "<<ants<<", timesteps= "<<time_steps<<", seed= "<<seed<<", pause= "<<pause<<std::endl;
  std::cout<<"The number of timesteps simulated were: "<<stepsSimulated<<std::endl;
  std::cout<<"Total ants during simulation "<<world.totalAnt<<std::endl;
  std::cout<<"Total doodlebugs during simulation "<<world.totalDood<<std::endl;
  std::cout<<"Remaining ants are: "<<world.numAnt<<std::endl;
  std::cout<<"Remaining doodlebugs are: "<<world.numDood<<std::endl;

  return 0;
}

