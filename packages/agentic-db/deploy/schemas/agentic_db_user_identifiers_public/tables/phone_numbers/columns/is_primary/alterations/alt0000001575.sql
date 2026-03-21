-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/is_primary/alterations/alt0000001575
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/is_primary/column


COMMENT ON COLUMN "agentic_db_user_identifiers_public".phone_numbers.is_primary IS E'Whether this is the user''s primary phone number';

