import controlP5.*; 
ControlP5 gui; 
void setup() { 
  size(500, 500); 
  background(255);
  gui = new ControlP5(this); 
  gui.addTextfield("login") 
    .setPosition(170, 80) 
    .setSize(120, 20);
  gui.addTextfield("senha") 
    .setPosition(170, 120) 
    .setSize(120, 20);
  gui.addBang("ok") 
    .setPosition(300, 120) 
    .setSize(30, 20) 
    .getCaptionLabel() 
    .align(ControlP5.CENTER, ControlP5.CENTER);
}
void draw() {
} 
public void ok() { 
  String x = gui.get(Textfield.class, "login").getText();
  String y = gui.get(Textfield.class, "senha").getText();
  String m = "mateus";
  String s = "1234";
  if ((x.equals(m) == true)&&(y.equals(s) == true)) {
    fill(40,200,50);
    text("autenticação completa",170, 160);
    fill(255);
    text("O login esta incorreto", 170, 70);
    text("A senha esta incorreta", 170, 160);
  } 
  if ((x.equals(m) == false)&&(y.equals(s) == false)) {
    fill(255);
    text("autenticação completa",170, 160);
    fill(255, 60, 60);
    text("O login esta incorreto", 170, 70);
    text("A senha esta incorreta", 170, 160);
  }
  if ((x.equals(m) == true)&&(y.equals(s) == false)) {
    fill(255);
    text("autenticação completa",170, 160);
    fill(255);
    text("O login esta incorreto", 170, 70);
    fill(255, 60, 60);
    text("A senha esta incorreta", 170, 160);
  }
  if ((y.equals(s) == true)&&(x.equals(m) == false)) {
    fill(255);
    text("autenticação completa",170, 160);
    fill(255);
    text("A senha esta incorreta", 170, 160);
    fill(255, 60, 60);
    text("O login esta incorreto", 170, 70);
  }
}