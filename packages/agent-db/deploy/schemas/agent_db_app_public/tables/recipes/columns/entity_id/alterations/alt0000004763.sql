-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/entity_id/alterations/alt0000004763
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/entity_id/column
-- requires: schemas/agent_db_app_public/tables/notifications/columns/source_entity_type/column


ALTER TABLE "agent_db_app_public".recipes 
  ALTER COLUMN entity_id SET NOT NULL;

