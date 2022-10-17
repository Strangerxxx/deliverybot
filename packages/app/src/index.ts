import * as path from "path";
export { apps, main, slack, jobs } from "./apps";
export { load, logger } from "@deliverybot/core";

const pkg = require(path.join(__dirname, "..", "package.json"));
export const info: { [k: string]: string } = {
  version: pkg.version,
};
