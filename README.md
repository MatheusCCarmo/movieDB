# MovieDB

Layout de uma página de detalhes do filme, baseado no app TodoMovies.

Feito com Flutter utilizando Clean Architecture

## Package Utilizados
- <b>mocktail:</b> ^0.1.4
- <b>dio:</b> ^4.0.0
- <b>mobx:</b> ^2.0.1
- <b>flutter_mobx:</b> ^2.0.0
- <b>flutter_dotenv:</b> ^5.0.0
- <b>flutter_modular:</b> ^3.3.1

## Screenshot
<img src="https://user-images.githubusercontent.com/43590889/128897358-f19ba3a3-1666-4649-90f0-74771c2ad91e.png" width="360" height="640">


## Funcionamento
Para obter os pacotes utilizados é necessário rodar o seguinte comando na raíz do projeto
```
flutter pub get
```

Deve ser criado o arquivo .env na raíz do projeto no seguinte formato
```
API_KEY=<<api-key>>
BASE_URL=<<base-url>>
```
- A BASE_URL utilizada foi http://api.themoviedb.org/3/movie/
- A API_KEY você pode obter aqui: [TMDB](https://developers.themoviedb.org/3/getting-started/introduction)
