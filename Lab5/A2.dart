import 'dart:io';

void main(){
  List<dynamic> list1 = [];
  List<dynamic> list2 = [];
  bool keepRunning = true;

  //reader for list1
  do{
    stdout.write("Enter element for list1 (type 0 to exit): ");
    String? element = stdin.readLineSync();

    if(element == "0"){
      keepRunning = false;
    }
    else if(element != null){
      list1.add(element);
    }
  }while(keepRunning);


  //reader for list2
  keepRunning = true;
  do{
    stdout.write("Enter element for list2 (type 0 to exit): ");
    String? element = stdin.readLineSync();

    if(element == "0"){
      keepRunning = false;
    }
    else if(element != null){
      list2.add(element);
    }
  }while(keepRunning);


  //check common elements and print
  printCommonElements(list1, list2);
}

//function 
void printCommonElements(list1,list2){
  List<dynamic> common = [];

  for(var element in list1){
    if(list2.contains(element)){
      common.add(element);
    }
  }

  //printing
  if(common.isNotEmpty){
    print("Common elements: $common");
  }
  else{
    print("No common element found.");
  }
}