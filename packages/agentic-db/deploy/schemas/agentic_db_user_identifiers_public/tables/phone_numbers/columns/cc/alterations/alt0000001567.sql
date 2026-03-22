-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/cc/alterations/alt0000001567
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/cc/column


COMMENT ON COLUMN "agentic_db_user_identifiers_public".phone_numbers.cc IS E'Country calling code (e.g. +1, +44)';

