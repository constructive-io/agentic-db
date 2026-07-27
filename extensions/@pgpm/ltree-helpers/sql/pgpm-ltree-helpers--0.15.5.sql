\echo Use "CREATE EXTENSION pgpm-ltree-helpers" to load this file. \quit
CREATE SCHEMA ltree_helpers;

GRANT USAGE ON SCHEMA ltree_helpers TO authenticated, anonymous;

ALTER DEFAULT PRIVILEGES IN SCHEMA ltree_helpers
  GRANT EXECUTE ON FUNCTIONS TO authenticated;

CREATE FUNCTION ltree_helpers.to_path(slash_path text) RETURNS ltree AS $EOFCODE$
  SELECT replace(ltrim(slash_path, '/'), '/', '.')::ltree;
$EOFCODE$ LANGUAGE sql IMMUTABLE STRICT;

CREATE FUNCTION ltree_helpers.to_slash(lpath ltree) RETURNS text AS $EOFCODE$
  SELECT '/' || replace(lpath::text, '.', '/');
$EOFCODE$ LANGUAGE sql IMMUTABLE STRICT;

CREATE FUNCTION ltree_helpers.to_query(glob text) RETURNS lquery AS $EOFCODE$
  SELECT replace(
    replace(
      replace(
        replace(ltrim(glob, '/'), '**', '__DSTAR__'),
        '*', '*{1}'
      ),
      '__DSTAR__', '*'
    ),
    '/', '.'
  )::lquery;
$EOFCODE$ LANGUAGE sql IMMUTABLE STRICT;