class DNA {
  int[] genes;
  //int genes;
  int[] weightnum = new int [25];
  int[] valuenum = new int [25];
  
  int score = 0, totalweight, totalvalue;
  float fitness, mutationRate = 0.05;
  
  DNA(){
    genes = new int[24];
    for (int i = 0; i < genes.length; i++){
      genes[i] = (int) random(0,2);
    }
  }
  
  void calulateWeight(){
    //for (){}
  }
  
  void calulateValue(){
  }
  
  void fitness() {
    if(totalweight == 5000){
     /*for (int i = 0; i < genes.length; i++) {
        if (genes[i] == target.charAt(i)) {
          score++;
        }
     }
     fitness = float(score)/target.length();*/
    }
  }
    void mutate(float mutationRate) {
    for (int i = 0; i < genes.length; i++) {
      if (random(1) < mutationRate) {
        genes[i] = (char) random(32,128);
      }
    }
  }
}
