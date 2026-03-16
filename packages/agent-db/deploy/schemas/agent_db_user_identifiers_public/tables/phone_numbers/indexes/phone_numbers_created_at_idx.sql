-- Deploy: schemas/agent_db_user_identifiers_public/tables/phone_numbers/indexes/phone_numbers_created_at_idx
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_user_identifiers_public/schema
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/table
-- requires: schemas/agent_db_user_identifiers_public/tables/phone_numbers/columns/created_at/column


CREATE INDEX phone_numbers_created_at_idx ON "agent_db_user_identifiers_public".phone_numbers ( created_at );

