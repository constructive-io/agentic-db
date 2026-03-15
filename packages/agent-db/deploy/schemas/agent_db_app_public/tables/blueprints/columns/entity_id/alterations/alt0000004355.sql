-- Deploy: schemas/agent_db_app_public/tables/blueprints/columns/entity_id/alterations/alt0000004355
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/blueprints/table
-- requires: schemas/agent_db_app_public/tables/threads/columns/embedding/column
-- requires: schemas/agent_db_app_public/tables/blueprints/columns/entity_id/column


ALTER TABLE "agent_db_app_public".blueprints 
  ALTER COLUMN entity_id SET NOT NULL;

