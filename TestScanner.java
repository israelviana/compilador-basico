import java.io.FileReader;
import java_cup.runtime.Symbol;

public class TestScanner {
    public static void main(String[] args) {
        try {
            scanner scanner = new scanner(new FileReader("input.txt"));

            Symbol token;
            System.out.println("Tokens encontrados:");
            while ((token = scanner.next_token()).sym != sym.EOF) {
                System.out.println("Token: " + token.sym + ", Valor: " + token.value);
            }

            System.out.println("Análise léxica concluída com sucesso!");

        } catch (Exception e) {
            System.err.println("Erro durante a análise léxica: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
