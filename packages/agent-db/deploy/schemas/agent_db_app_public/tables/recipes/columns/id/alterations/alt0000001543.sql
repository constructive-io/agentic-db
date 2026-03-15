-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/id/alterations/alt0000001543
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/id/column
-- requires: schemas/agent_db_app_public/tables/notifications/columns/source_entity_type/column


ALTER TABLE agent_db_app_public.recipes 
  ALTER COLUMN id SET NOT NULL;

