package mvc;

public class ImcModel {
	
	private float imc;
	private String sex;

	public ImcModel(float imc, String sex) {
		this.imc = imc;
		this.sex = sex;
	}

	public String resultado() {
            if (sex == "f") {
                if (imc < 19.1) {
                    return "Peso Abaixo! :(";
                } else if (imc > 25.8) {
                    return "Peso Acima! :(";
                } else {
                    return "Peso Ideal! :)";
                }
            } else {
                if (imc < 20.7) {
                    return "Peso Abaixo! :(";
                } else if (imc > 26.4) {
                    return "Peso Acima! :(";
                } else {
                    return "Peso Ideal! :)";
                }
            }
        }
	}
