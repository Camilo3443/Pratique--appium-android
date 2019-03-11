class Screen < Appium::Driver

    # ================================= SCREEN ======================================    
    def initialize
        @input_email = "email"
        @btn_prosseguir = "nextBtn"
        @input_senha = "password"
        @btn_login = "loginBtn"
        @mensagem_email_invalido = "Email Inválido"
    end
    

        # ================================= METODOS ======================================    



    def preenche_email_Invalido(email)
        credencial = busca_datapool(email)
        id(@input_email).send_keys credencial[:email]
        id(@btn_prosseguir).click
    end
end