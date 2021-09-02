import { buildSchema } from "https://raw.githubusercontent.com/adelsz/graphql-deno/v15.0.0/mod.ts";

const schema = buildSchema(
  `schema {
    query: String
  }
  
  type Qeury {
    test: String
  }
  `
);

export default schema;
