-- Deploy schemas/inflection/procedures/singular to pg

-- requires: schemas/inflection/schema
-- requires: schemas/inflection/tables/inflection_rules/table
-- requires: schemas/inflection/procedures/should_skip_uncountable

BEGIN;

CREATE FUNCTION inflection.singular (str text)
  RETURNS text
  AS $$
DECLARE
  result record;
  matches text[];
BEGIN
    IF inflection.should_skip_uncountable(lower(str)) THEN
      return str;
    END IF;

    FOR result IN
    SELECT * FROM inflection.inflection_rules where type='singular'
      LOOP
        matches = regexp_matches(str, result.test, 'gi');
        IF (array_length(matches, 1) > 0) THEN
           IF (result.replacement IS NULL) THEN
				return str;        
           END IF;
           str = regexp_replace(str, result.test, result.replacement, 'gi');
           return str;
        END IF;
      END LOOP;
  return str;
END;
$$
LANGUAGE 'plpgsql' IMMUTABLE;
COMMIT;
