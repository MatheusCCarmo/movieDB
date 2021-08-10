# MovieDB

Layout de uma página de detalhes do filme, baseado no app TodoMovies.

Feito com Flutter utilizando Clean Architecture e testes.

Os dados dos filme foram coletados através da API do [The Movie DB](https://www.themoviedb.org/). 


## Package Utilizados
- <b>mocktail:</b> ^0.1.4
- <b>dio:</b> ^4.0.0
- <b>mobx:</b> ^2.0.1
- <b>flutter_mobx:</b> ^2.0.0
- <b>flutter_dotenv:</b> ^5.0.0
- <b>flutter_modular:</b> ^3.3.1

## Screenshots

<img src="https://user-images.githubusercontent.com/43590889/128907945-365f7e0c-cf00-4fa5-a7e4-e9532a134588.png" width="400" height="800">
<img src="https://user-images.githubusercontent.com/43590889/128908004-02c796e3-20d0-4e2e-be05-0da671fc73ff.png" width="400" height="800">



## Funcionamento
Para obter os pacotes utilizados é necessário rodar o seguinte comando na raíz do projeto
```
flutter pub get
```

Você deve criar o arquivo .env na raíz do projeto no seguinte formato
```
API_KEY=<<api-key>>
BASE_URL=<<base-url>>
```
- A BASE_URL utilizada foi `http://api.themoviedb.org/3/movie/`
- A API_KEY você pode obter aqui: [TMDB](https://developers.themoviedb.org/3/getting-started/introduction)
