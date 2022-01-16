DNA[] population = new DNA[100];

void setup() {
  size(200, 200);
  for (int i = 0; i < population.length; i++) {
    println("Current individual:", i);
    population[i] = new DNA();
    //population[i].indexSetup();
    population[i].calulateValue();
  }
}


void draw() {
  for (int i = 0; i < population.length; i++) {
    population[i].fitness();
  }

  ArrayList<DNA> matingPool = new ArrayList<DNA>();

  for (int i = 0; i < population.length; i++) {
    int n = int(population[i].fitness * 100);
    for (int j = 0; j < n; j++) {
      matingPool.add(population[i]);
      println("Total population:", population.length);
    }
  }

  for (int i = 0; i < population.length; i++) {
    int a = int(random(matingPool.size()));
    int b = int(random(matingPool.size()));

    DNA parentA = matingPool.get(a);
    DNA parentB = matingPool.get(b);
    DNA child = parentA.crossover(parentB);
    child.mutate();
  }
  }

  DNA crossover(DNA parent) {

    DNA child = new DNA();

    int midpoint = int(random(genes.length));

    for (int i = 0; i < genes.length; i++) {
      if (i > midpoint) {
        child.genes[i] = genes[i];
      } else {
        child.genes[i] = partner.genes[i];
      }
    }

    return child;
  }

void mutate() {
  for (int i = 0; i < genes.length; i++) {
    if (random(1) < mutationRate) {
      genes[i] = (int) random(0, 2);
    }
  }
}
