-- Deploy: schemas/agent_db_app_public/tables/notes/columns/content/alterations/alt0000002617
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/content/column
-- requires: schemas/agent_db_app_public/tables/notes/columns/updated_at/alterations/alt0000002616


ALTER TABLE "agent_db_app_public".notes 
  ALTER COLUMN content SET NOT NULL;

