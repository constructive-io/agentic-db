-- Deploy: schemas/agentic_db_auth_private/tables/session_credentials/columns/secret_hash/alterations/alt0000003469
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_auth_private/schema
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/table
-- requires: schemas/agentic_db_auth_private/tables/session_credentials/columns/secret_hash/column


ALTER TABLE agentic_db_auth_private.session_credentials 
  ALTER COLUMN secret_hash SET NOT NULL;

