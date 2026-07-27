-- Deploy schemas/ltree_helpers/procedures/to_query to pg

-- requires: schemas/ltree_helpers/schema

BEGIN;

-- Convert a glob-style path to an lquery value.
-- Glob semantics: * = single level, ** = recursive descent
-- '/projects/*/docs'  => 'projects.*{1}.docs'
-- '/projects/**'      => 'projects.*'
-- '/projects/*'       => 'projects.*{1}'
CREATE FUNCTION ltree_helpers.to_query(
  glob text
) RETURNS lquery AS $$
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
$$ LANGUAGE sql IMMUTABLE STRICT;

COMMIT;
