-- change any of this you like

CREATE DATABASE bsky;

CREATE TABLE bsky_urls (
  id SERIAL PRIMARY KEY,
  timestamp TIMESTAMPTZ NOT NULL,
  url VARCHAR(2048) NOT NULL
);

CREATE INDEX bsky_urls_url_idx ON bsky_urls (url);

CREATE USER bskylogger WITH PASSWORD 'PASSWORD'; -- set this

GRANT ALL PRIVILEGES ON DATABASE bsky TO bskylogger;
GRANT ALL PRIVILEGES ON TABLE bsky_urls TO bskylogger;
GRANT USAGE ON SEQUENCE bsky_urls_id_seq TO bskylogger;
