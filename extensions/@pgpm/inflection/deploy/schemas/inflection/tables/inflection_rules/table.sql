-- Deploy schemas/inflection/tables/inflection_rules/table to pg

-- requires: schemas/inflection/schema

BEGIN;

CREATE TABLE inflection.inflection_rules (
    id uuid PRIMARY KEY DEFAULT uuidv7(),
    type text, -- singular, plural
    test text,
    replacement text
);

GRANT select on inflection.inflection_rules to PUBLIC;

COMMIT;
