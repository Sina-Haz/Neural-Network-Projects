int sign(float n){
  if(n >= 0){return 1;}
  else{return -1;}
}

class Perceptron{
  float [] weights = new float[2];
  
  Perceptron(){
    for(int i = 0;i < weights.length;i++){
      weights[i] = random(-1,1);
    }
  }
  
  int guess(float [] inputs){
    float sum = 0;
    for(int i = 0;i < inputs.length;i++){
      sum += inputs[i]*weights[i];
    }
    int output = sign(sum);
    return output;
  }
}
