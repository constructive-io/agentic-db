-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/embedding/column


ALTER TABLE agent_db_app_public.workflows 
  ADD COLUMN entity_id uuid;

