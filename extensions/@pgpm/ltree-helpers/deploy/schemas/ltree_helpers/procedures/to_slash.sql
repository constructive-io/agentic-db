-- Deploy schemas/ltree_helpers/procedures/to_slash to pg

-- requires: schemas/ltree_helpers/schema

BEGIN;

-- Convert an ltree value to a slash-delimited path.
-- 'projects.alpha.docs' => '/projects/alpha/docs'
CREATE FUNCTION ltree_helpers.to_slash(
  lpath ltree
) RETURNS text AS $$
  SELECT '/' || replace(lpath::text, '.', '/');
$$ LANGUAGE sql IMMUTABLE STRICT;

COMMIT;
