-- Deploy: schemas/agent_db_app_public/tables/templates/columns/content/alterations/alt0000004778
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/type/column
-- requires: schemas/agent_db_app_public/tables/templates/columns/content/column


ALTER TABLE "agent_db_app_public".templates 
  ALTER COLUMN content SET NOT NULL;

