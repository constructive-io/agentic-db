-- Deploy: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/id/alterations/alt0000001859
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_encrypted/schema
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/table
-- requires: schemas/agentic_db_encrypted/tables/encrypted_secrets/columns/id/column



ALTER TABLE agentic_db_encrypted.encrypted_secrets 
    ALTER COLUMN id SET DEFAULT uuidv7();

