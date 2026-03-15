-- Deploy: schemas/agent_db_app_public/tables/templates/columns/entity_id/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/embedding/column


ALTER TABLE "agent_db_app_public".templates 
  ADD COLUMN entity_id uuid;

