import {
  DataTypes,
  Database,
  Model,
  SQLite3Connector,
  SQLite3Options,
} from "https://deno.land/x/denodb/mod.ts";
import { v4 } from "https://deno.land/std/uuid/mod.ts";

const connectOptions: SQLite3Options = {
  filepath: "./data.db",
};

const connection = new SQLite3Connector(connectOptions);
