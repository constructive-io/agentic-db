-- Deploy schemas/ltree_helpers/procedures/to_path to pg

-- requires: schemas/ltree_helpers/schema

BEGIN;

-- Convert a slash-delimited path to an ltree value.
-- '/projects/alpha/docs' => 'projects.alpha.docs'
-- 'projects/alpha'       => 'projects.alpha'
CREATE FUNCTION ltree_helpers.to_path(
  slash_path text
) RETURNS ltree AS $$
  SELECT replace(ltrim(slash_path, '/'), '/', '.')::ltree;
$$ LANGUAGE sql IMMUTABLE STRICT;

COMMIT;
