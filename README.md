# Testes automatizados usando Robot Framework com Sikulli

## Robot Framework

## Sikulli Library

# Passos de Instalação

1. [Python 2.7 e PIP](https://www.python.org/downloads/release/python-2717/)
2. Instalação Java JRE [Como instalar](https://medium.com/@mauriciogeneroso/configurando-java-1-instala%C3%A7%C3%A3o-do-jre-e-do-jdk-no-windows-38cacace0377)
3. Instalação do Gitbash [download](https://gitforwindows.org/)
4. `pip install robotframework`
5. `pip install robotframework-SikuliLibrary`

# Executando os Testes

- Acessar pasta features: `cd features`
- Executando teste individual: `robot -d ../results testeX.robot`
- Executando todos os testes: `robot -d ../results *.robot`

# Referências

- [Robot Framework + Sikulli project](https://github.com/rainmanwy/robotframework-SikuliLibrary)
- [Sikuli Library Docs](http://rainmanwy.github.io/robotframework-SikuliLibrary/doc/SikuliLibrary.html#Wait%20For%20Image)
- [Robotizando Testes](http://robotizandotestes.blogspot.com/2018/02/season-libraries-ep-02-library-sikuli.html)
