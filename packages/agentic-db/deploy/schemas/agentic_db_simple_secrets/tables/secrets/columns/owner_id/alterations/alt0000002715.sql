-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/columns/owner_id/alterations/alt0000002715
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/columns/owner_id/column


ALTER TABLE agentic_db_simple_secrets.secrets 
  ALTER COLUMN owner_id SET NOT NULL;

