-- Deploy: schemas/agent_db_app_public/tables/memories/columns/entity_id/alterations/alt0000001034
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/memories/table
-- requires: schemas/agent_db_app_public/tables/rules/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/memories/columns/entity_id/column


ALTER TABLE agent_db_app_public.memories 
  ALTER COLUMN entity_id SET NOT NULL;

