-- Deploy: schemas/agent_db_app_public/tables/repositories/columns/name/alterations/alt0000001343
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/name/column
-- requires: schemas/agent_db_app_public/tables/repositories/columns/updated_at/alterations/alt0000001342


ALTER TABLE agent_db_app_public.repositories 
  ALTER COLUMN name SET NOT NULL;

