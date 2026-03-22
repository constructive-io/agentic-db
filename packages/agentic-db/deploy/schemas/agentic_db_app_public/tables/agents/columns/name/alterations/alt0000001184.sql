-- Deploy: schemas/agentic_db_app_public/tables/agents/columns/name/alterations/alt0000001184
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/agents/table
-- requires: schemas/agentic_db_app_public/tables/agents/columns/name/column
-- requires: schemas/agentic_db_app_public/tables/agents/columns/updated_at/alterations/alt0000001183


ALTER TABLE "agentic_db_app_public".agents 
  ALTER COLUMN name SET NOT NULL;

