class Validator{
    constructor(){
     this.Validations=[
        "data-required",
        "data-min-length",
        "data-max-length",
        "data-email-validate",
        "data-only-letters",
        "data-equal",
        "data-password-validate",
     ]   
    }
    //iniciara a validacao de todos os campos
    validate(form){

    //resgata todas as validacoes
    let currentValidations = document.querySelectorAll('form .error-validation');
    if(currentValidations.length>0){
       this.cleanValidations(currentValidations); 
    }

    //pegar os inputs
    let inputs = form.getElementsByTagName('input');
   
    //transformando o HTMLCollection para array
    let inputArray=[...inputs];

    //loop nos inpts e validacoes mediante o que foi encontrado
  inputArray.forEach(function(input){
      for(let i = 0; this.Validations.length >i; i++){
          //verifica se avalidacao actual existe no input
          if(input.getAttribute(this.Validations[i])!=null){
            
        //transformar o data-min-length em minlength
        //limpando a string paara virar um metodo
        let method = this.Validations[i].replace('data-','').replace('-','');
         //valor do input
         let value = input.getAttribute(this.Validations[i]);

         //invocar o metodo
         this[method](input,value);
        }
      }

  },this);
    }
    //verifica se um input tem um numero minimo de caracteres
    minlength(input, minvalue){
    let inputlength = input.value.length;

    let errorMessage= 'O campo precisa ter pelo menos ${minvalue} caracteres';
    if(inputlength<minvalue){
    this.printMessage(input, errorMessage);

  

    
    }

    }
    //verifica se o input passou do limite te caracters
    maxlength(input, maxValue){
    let inputlength = input.value.length;
    let errorMessage='o campo precisa ter menos que ${maxValue} caracters';

    if(inputlength>maxValue){
        this.printMessage(input, errorMessage);
    }

    }

    //validacao de email
    emailvalidate(input){

        let re =/\S+@\S+\.\S+/;
        let email = input.value;
        let errorMessage= 'insira um email no padrao example@gmail.com'; 
        if (!re.test(email)){
            this.printMessage(input, errorMessage);
        }

    }

    onlyletters(input){
        let re=/^[A-Za-z]+$/;
        let inputvalue = input.value;
        let errorMessage ='Este campo nao aceita numeros e nem caracteres especiais';
        if(!re.test(inputvalue)){
            this.printMessage(input, errorMessage);
        }
    }



    //imprimindo a mensagem de erro na tela
    printMessage(input, msg){
        //quantidade de erros
        let errorsQty= input.parentNode.querySelector('.error-validation');
      if(errorsQty===null){
            
    let template = document.querySelector('.error-validation').cloneNode(true);

    template.textContent=msg;
    let inputparent = input.parentNode;

    template.classList.remove('template')

    inputparent.appendChild(template);
      }
    }

    //verifica se o input e requerido
    required(input){
        let inputValue = input.value;
        if(inputValue===''){
          //  backticks meaning
            let errorMessage = 'Este campo e obrigatorio';
            this.printMessage(input, errorMessage);
        }
    }

    equal(input, inputName){
        let inputToCompare= document.getElementsByName(inputName)[0];
        let errorMessage = 'Palavras passe nao compativeis ${inputName}';
        if(input.value !=inputToCompare.value){
         this.printMessage(input, errorMessage);   
        }
    }

    //validacaom da palavra passe
    passwordvalidate(input){
        //explodir string em um array
        let charArr = input.value.split(""); 
        let uppercases =0;
        let numbers=0;

        for(let i=0; charArr.length>i; i++){
            if(charArr[i]===charArr[i].toUpperCase() && isNaN(parseInt(charArr[i]))){
                uppercases++;
            }else if(!isNaN(parseInt(charArr[i]))){
                numbers++;
            }
        }
        if(uppercases===0 || numbers===0){
            let errorMessage = 'A senha precisa de um carater maiusculo e um mumero';
            this.printMessage(input, errorMessage);
        }

    }
    //limpa as validacoes da tela
    cleanValidations(validations){
    validations.forEach(el=>el.remove());
 }
}



//referenciar o formulario e o evento do botao;
let form= document.getElementById("register-form");
let submit = document.getElementById("btn-submit");
let validator = new Validator();

//evento que dispara as validacoes
submit.addEventListener('click', function(e){
    e.preventDefault()  ;
    validator.validate(form);
});