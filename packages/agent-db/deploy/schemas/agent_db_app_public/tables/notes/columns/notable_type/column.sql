-- Deploy: schemas/agent_db_app_public/tables/notes/columns/notable_type/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/notes/table
-- requires: schemas/agent_db_app_public/tables/notes/columns/content/alterations/alt0000000915


ALTER TABLE agent_db_app_public.notes 
  ADD COLUMN notable_type text;

