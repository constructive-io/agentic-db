-- Deploy: schemas/agent_db_app_public/tables/processes/columns/entity_id/alterations/alt0000001194
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/processes/table
-- requires: schemas/agent_db_app_public/tables/processes/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/embedding/column


ALTER TABLE agent_db_app_public.processes 
  ALTER COLUMN entity_id SET NOT NULL;

