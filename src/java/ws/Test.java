package ws;

import java.nio.charset.StandardCharsets;
import org.springframework.web.bind.annotation.*;

@RestController
public class Test
{
    @RequestMapping(value = "test", produces = "application/json; charset=utf-8")
    public String test(@RequestParam(value = "valor") String valor)
    {
        byte[] bytes = valor.getBytes(StandardCharsets.ISO_8859_1);
        valor = new String(bytes, StandardCharsets.UTF_8);
            
        System.out.println("valor recibido: " + valor);
        
        return valor;
    }
}
