IntDict dicionario = new IntDict();
String[] arquivo;
String[] tokens;
String[] keys;
String palavras;
String k;
int j = 0;

void setup(){
  size(800,600);
  //fullScreen();
  background(0);
  
  arquivo = loadStrings("arquivo.txt");
  palavras = join(arquivo, "\n");
  tokens = splitTokens(palavras,"\n ,.;");
  
  for(int i = 0; i < tokens.length; i++){
    String token = tokens[i].toLowerCase();
    if(dicionario.hasKey(token)){
      dicionario.increment(token);
    } else {
      dicionario.set(token,1);
    }
  }
  
  keys = dicionario.keyArray();
}

void draw(){
  if (j < keys.length){   
    k = keys[j];
    
    if (!k.equals("da") && !k.equals("do") && !k.equals("que")
          && !k.equals("de") && !k.equals("a") && !k.equals("o")
          && !k.equals("no") && !k.equals("em") && !k.equals("e")){
            
        int qtd = dicionario.get(k);
        textSize(5 * qtd);
        fill(random(255),random(255),random(255));
        //o -50 foi utilizado para as palavras não ficarem coladas nas margens da janela
        text(k, random(20, width-50), random(20, height-50));
    }
    j++;
  }
}
