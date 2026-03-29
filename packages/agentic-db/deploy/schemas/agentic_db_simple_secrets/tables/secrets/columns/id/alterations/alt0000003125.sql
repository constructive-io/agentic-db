-- Deploy: schemas/agentic_db_simple_secrets/tables/secrets/columns/id/alterations/alt0000003125
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_simple_secrets/schema
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/table
-- requires: schemas/agentic_db_simple_secrets/tables/secrets/columns/id/column


ALTER TABLE agentic_db_simple_secrets.secrets 
  ALTER COLUMN id SET NOT NULL;

