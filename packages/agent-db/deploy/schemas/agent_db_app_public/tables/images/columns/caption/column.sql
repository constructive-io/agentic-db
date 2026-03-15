-- Deploy: schemas/agent_db_app_public/tables/images/columns/caption/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/columns/alt_text/column


ALTER TABLE agent_db_app_public.images 
  ADD COLUMN caption text;

