package hello_world;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
@RequestMapping("/")

public class Turma40Application {

	@GetMapping
	public String helloTurma40() {
		return "Ola Mundo, com c�digo";
	}
	
	@GetMapping("/rota1")
	public String helloTurma40RotaI() {
		return "Ola Mundo, com c�digo I";
	}
	
	@GetMapping("/rota2")
	public String helloTurma40RotaII() {
		return "Ola Mundo, com c�digo II";
	}


	public static void main(String[] args) {
		SpringApplication.run(Turma40Application.class, args);
	}

}
