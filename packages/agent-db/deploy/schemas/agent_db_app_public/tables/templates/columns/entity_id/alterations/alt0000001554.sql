-- Deploy: schemas/agent_db_app_public/tables/templates/columns/entity_id/alterations/alt0000001554
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/templates/columns/entity_id/column


ALTER TABLE agent_db_app_public.templates 
  ALTER COLUMN entity_id SET NOT NULL;

