# Desafio Docker Go - FullCycle
Repositório utilizado no treinamento FullCycle

#### Realização do desafio docker para gerar uma imagem com Golang e um tamanho menor que 2MB.

<br>
<br>

## Passos para a execução
<br>

### Build do Dockerfile
```bash
docker build -t mauriciobrocco/codeeducation .
```
### Verificando o tamanho da imagem
```bash
docker image 
```

<br>
<br>

### Rodando a imagem criada
```bash
docker run -it --name desafiodocker --rm mauriciobrocco/codeeducation
```
### Output
```bash
Code.education Rocks!
```
