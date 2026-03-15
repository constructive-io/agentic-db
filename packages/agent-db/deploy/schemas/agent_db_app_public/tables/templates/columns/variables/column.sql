-- Deploy: schemas/agent_db_app_public/tables/templates/columns/variables/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/templates/table
-- requires: schemas/agent_db_app_public/tables/templates/columns/content/alterations/alt0000004778


ALTER TABLE "agent_db_app_public".templates 
  ADD COLUMN variables jsonb;

