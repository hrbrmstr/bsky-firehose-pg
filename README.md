# Log URLs posted to the bsky firehose to postgres w/timestamps

Ref: https://observablehq.com/@hrbrmstr/new-improved-urls-and-domains-from-the-bluesky-firehose

`setup.sql` contains the schema and setup info for the database/table/indexes

```bash
$ npm install --no-fund
$ mv .env.example .env
$ # edit ---------ꜛꜛꜛꜛ with your DB info from setup.sql 
$ just run
```
