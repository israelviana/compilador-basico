ETAPA 1:
Para rodar o teste do Scanner com as classes JÁ geradas rode o seguinte comando:
java -cp lib/java-cup-11b.jar:. TestScanner


Caso queira testar do zero, apague os arquivos -> scanner.class; scanner.java; sym.class

java -jar lib/jflex-full-1.9.1.jar scanner.flex
javac -cp lib/java-cup-11b.jar:. sym.java Scanner.java TestScanner.java
java -cp lib/java-cup-11b.jar:. TestScanner

Ao rodar o TestScanner, será mostrado no terminal cada token do codigo que está no input.txt.

