class DNA {
  int[] genes;
  //int genes;
  int[] weightnum = new int [25];
  int[] valuenum = new int [25];
  
  int score = 0;
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

     for (int i = 0; i < genes.length; i++) {
        if (genes[i] == target.charAt(i)) {
          score++;
        }
     }
     fitness = float(score)/target.length();
  }
    
   DNA crossover(DNA partner) {
    DNA child = new DNA(genes.length);
    int midpoint = int(random(genes.length));
    for (int i = 0; i < genes.length; i++) {
      if (i > midpoint) child.genes[i] = genes[i];
      else              child.genes[i] = partner.genes[i];
    }
    return child;
  }
    void mutate(float mutationRate) {
    for (int i = 0; i < genes.length; i++) {
      if (random(1) < mutationRate) {
        genes[i] = (char) random(32,128);
      }
    }
  }
}
