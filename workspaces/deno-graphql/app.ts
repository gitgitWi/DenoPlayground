import { Application, Router } from "https://deno.land/x/oak/mod.ts";
import { graphql } from "https://raw.githubusercontent.com/adelsz/graphql-deno/v15.0.0/mod.ts";

import schema from "./schema.ts";
import Query from "./resolver.ts";

const router = new Router();

const executeSchema = async ({ query }: any) => {
  const result = await graphql(schema, query, new Query());
  return result;
};

router.post("/graph", async ({ request, response }) => {
  if (request.hasBody) {
    const body = await request.body();
    const result = await executeSchema(body.value);
    response.body = result;
  } else {
    response.body = "Query Not Available";
  }
});

const app = new Application();
app.use(router.allowedMethods());
app.use(router.routes());

const PORT = 5001;
app.listen({ port: PORT });
console.log(`App is running on port ${PORT}`);
