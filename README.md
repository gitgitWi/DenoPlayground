# Playground for Deno tutorials

## Favorites

- [Deno 공식 홈페이지](https://deno.land)
- [Deno Deploy](https://deno.com/deploy): Deno, TS/JS 배포 SaaS, beta 버전 현재 일일 10만 / 분당 1천 requests 무료
- [ESM.sh](https://esm.sh) : `deno.land` 외 공식 추천하는 써드파티 모듈 CDN
- [Oak](https://oakserver.github.io/oak/): Node.js Koa의 Deno 버전 같은..미들웨어 프레임워크
- [Cotton](https://rahmanfadhil.github.io/cotton/): SQL ORM
- [deno-faker](https://github.com/jackfiszr/deno-faker): 더미데이터 생성

## Useful tools

### `asdf`

- Node.js, Deno 등 패키지 버전 매니저
- NVM이 Node의 여러 버전을 사용할 수 있게 관리해주는 도구라면,
- asdf은 Node 뿐만 아니라 Deno, Ruby 등 다양한 패키지들의 버전을 관리해 줌
- deno나 node를 직접 설치해서 쓰는 것보다는 이런 패키지 버전 매니저로 설치하는게 관리하기 훨씬 편함

## Issues

### MacOS 12에서 Docker로 Deno 설치 안되는 문제ㅠ

- Docker임에도 불구하고..MacOS 12 Monterey 호환성 에러가 계속 발생
- curl로 받아서 해도 안됨
- asdf 로 해도 안됨
- Rust의 Cargo로 설치해도 안됨
- 결국 그냥 Docker 안쓰고 Mac에서 Brew로 설치
  - 이때도 MacOS 12는 지원하지 않아서 에러날 수 있다고 경고 뜸..
  - 이래서 beta는 함부로 쓰면 안되는 거..

---

### References
