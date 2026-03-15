-- Deploy: schemas/agent_db_app_public/tables/ideas/columns/content/alterations/alt0000004651
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/ideas/table
-- requires: schemas/agent_db_app_public/tables/ideas/columns/content/column
-- requires: schemas/agent_db_app_public/tables/ideas/columns/updated_at/alterations/alt0000004650


ALTER TABLE "agent_db_app_public".ideas 
  ALTER COLUMN content SET NOT NULL;

