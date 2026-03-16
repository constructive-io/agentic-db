-- Deploy: schemas/agent_db_app_public/tables/notes/columns/content/alterations/alt0000001767
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/content/column
-- requires: schemas/agent_db_app_public/tables/notes/columns/updated_at/alterations/alt0000001766


ALTER TABLE "agent_db_app_public".notes 
  ALTER COLUMN content SET NOT NULL;

