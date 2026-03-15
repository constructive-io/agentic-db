-- Deploy: schemas/agent_db_app_public/tables/templates/columns/id/alterations/alt0000004722
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/id/column
-- requires: schemas/agent_db_app_public/tables/recipes/columns/embedding/column


ALTER TABLE "agent_db_app_public".templates 
  ALTER COLUMN id SET NOT NULL;

