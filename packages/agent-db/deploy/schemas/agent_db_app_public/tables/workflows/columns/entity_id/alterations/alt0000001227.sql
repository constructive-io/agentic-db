-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/entity_id/alterations/alt0000001227
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/workflows/columns/entity_id/column


ALTER TABLE agent_db_app_public.workflows 
  ALTER COLUMN entity_id SET NOT NULL;

