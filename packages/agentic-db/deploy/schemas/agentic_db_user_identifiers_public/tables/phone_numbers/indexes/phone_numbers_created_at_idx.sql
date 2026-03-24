-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/indexes/phone_numbers_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_private/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/created_at/column


CREATE INDEX phone_numbers_created_at_idx ON agentic_db_user_identifiers_public.phone_numbers ( created_at );

