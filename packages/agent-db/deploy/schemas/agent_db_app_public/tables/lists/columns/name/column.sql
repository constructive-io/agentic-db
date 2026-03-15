-- Deploy: schemas/agent_db_app_public/tables/lists/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/lists/table
-- requires: schemas/agent_db_app_public/tables/lists/columns/updated_at/alterations/alt0000001522


ALTER TABLE agent_db_app_public.lists 
  ADD COLUMN name text;

