package br.com.fiap.locatech.locatech.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/veiculo")
public class VeiculoController {

    @GetMapping
    public String veiculos(){
        return "Hello Veiculos!!";
    }

}
