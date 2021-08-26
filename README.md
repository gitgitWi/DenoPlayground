# Playground for Deno tutorials

## `asdf`

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
