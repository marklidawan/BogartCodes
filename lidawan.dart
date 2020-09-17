import 'dart:io';

void main() {
  String name = 'Mark Christian';
  Letter result = Letter(name);
  result.star_display();
}

Iterable<int> range(int low, int high) sync* {
  for (int i = low; i < high; ++i){
    yield i;
  }
}


class Letter {
  String name;

  Letter(String name) {
    this.name = name;
  }

  void star_display() {
    try {
      int size = 3;
      int row = 0;
      int col = 0;

      var duplicate = new List();
      
      for (int x = 0; x < size; x++) {
        if(!duplicate.contains(this.name[x])){
          duplicate.add(this.name[x]);
        } else {
          size++;
          continue;
        }

        switch (this.name[x].toUpperCase()) {

          case ' ':
            size++;
            break;

          case 'A':
            for (final row in range(0, 7)){
              for (final col in range(0, 5)){
                if (((col==0 || col==4) && row!=0) || ((row==0 || row==3) && (col>0 && col<4))){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;

          case 'B':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ((col==0 || col==4) || ((row==0 || row==3 || row==6) && (col>0 && col <4))){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;

          case 'C':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ((col==0) || ((row==0 || row==6) && (col>0)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'D':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( (col==0) || (col==4 && (row!=0 && row!=6)) || (row==0 || row==6) && (col>0 && col<4) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'E':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==0 || ((row==0 || row==3 || row==6) && (col>0)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;
          case 'F':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( (col==0) || ((row==0 || row==3) && col>0) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'G':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==0 || (col==4 && (row!=1 && row!=2)) || ((row==0 || row==6) && (col>0 && col<4)) || (row==3 && (col==3 || col==5)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'H':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==0 || col==4 || (row==3 && (col>0 && col <4)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'I':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==2 || ((row==0 || row==6) && col!=2) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'J':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==2 || (row==0 && col!=2) || (row==6 && col<2) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'K':
          int i = 0;
          int j = 4;
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==0 || (row==col+2 && col>1) ){
                  stdout.write("*");
                } else if ((row==i && col==j) && col>0 ) {
                  stdout.write("*");
                  i+=1;
                  j-=1;
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'L':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==0 || (row==6 && col>0) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'M':
            for (final row in range(0, 7)){
              for (final col in range(0,7)){
                if ( col==0 || col==6 || ((row==col) && (col>0 && col<4)) || (row==1 && col==5) || (row==2 && col==4) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'N':
            for (final row in range(0, 6)){
              for (final col in range(0, 6)){
                if ( col==0 || col==5 || (row==col && (col>0 && col<5)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'O':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( ((col==0 || col==4) && (row!=0 && row!=6)) || ((row==0 || row==6) && (col>0 && col<4)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'P':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==0 || (col==4 && (row==1 || row==2)) || ((row==0 || row==3) && (col>0 && col<4)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'Q':
            for (final row in range(0, 8)){
              for (final col in range(0,5)){
                if ( ((col==0 || col==4) && (row>0 && row<6)) || ((row==0 || row==6) && (col>0 && col<4)) || (row==5 && col==1) || (row==7 && col==3) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'R':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==0 || (col==4 &&(row!=0 && row!=3)) || ((row==0 || row==3) && (col>0 && col<4)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'S':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( ((row==0 || row==3 || row==6) && (col>0 && col<4)) || (col==0 && (row>0 && row<3)) || (col==4 &&(row>3 && row<6)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'T':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( col==2 || (row==0 && col!=2) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'U':
            for (final row in range(0, 7)){
              for (final col in range(0,5)){
                if ( ((col==0 || col==4) && row!=6) || (row==6 &&(col>0 && col<4)) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'V':
          int a = 0;
          int b = 6;
            for (final row in range(0, 4)){
              for (final col in range(0, 7)){
                if ( row==col ){
                  stdout.write("*");
                } else if (row==a && col==b) {
                  stdout.write("*");
                  a+=1;
                  b-=1;
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'W':
          int c = 0;
          int d = 3;
            for (final row in range(0, 4)){
              for (final col in range(0, 7)){
                if ( col==0 || col==6 || (col==5 && row==2) || (col==4 && row==1) ){
                  stdout.write("*");
                } else if (row==c && col==d) {
                  stdout.write("*");
                  c+=1;
                  d-=1;
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;

            
          case 'X':
          int e = 0;
          int f = 4;
            for (final row in range(0, 5)){
              for (final col in range(0,5)){
                if ( row==e && col==f ){
                  stdout.write("*");
                  e+=1;
                  f-=1;
                } else if (row==col) {
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'Y':
            for (final row in range(0, 5)){
              for (final col in range(0,5)){
                if ( (col==2 && row>1) || (row==col && col<2) || (row==0 && col==4) || (row==1 && col ==3) ){
                  stdout.write("*");
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;


          case 'Z':
          int g = 1;
          int h = 4;
            for (final row in range(0, 6)){
              for (final col in range(0, 6)){
                if ( row==0 || row ==5 ){
                  stdout.write("*");
                } else if (row==g && col==h) {
                  stdout.write("*");
                  g+=1;
                  h-=1;
                } else {
                  stdout.write(" ");
                }
              } print(" ");
            }
            break;
        }
      }
    } catch (er) {
      print('Must be words');
    }
  }
}