-- Deploy: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/indexes/phone_numbers_owner_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_user_identifiers_public/schema
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agentic_db_user_identifiers_public/tables/phone_numbers/columns/owner_id/column


CREATE INDEX phone_numbers_owner_id_idx ON "agentic_db_user_identifiers_public".phone_numbers USING BTREE ( owner_id );

