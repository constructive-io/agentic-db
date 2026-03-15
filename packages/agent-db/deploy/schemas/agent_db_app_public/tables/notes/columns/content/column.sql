-- Deploy: schemas/agent_db_app_public/tables/notes/columns/content/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/updated_at/alterations/alt0000000914


ALTER TABLE agent_db_app_public.notes 
  ADD COLUMN content text;

