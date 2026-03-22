-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/columns/owner_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table


ALTER TABLE agentic_db_simple_secrets.secrets 
  ADD COLUMN owner_id uuid;

