-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/name/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/updated_at/alterations/alt0000001549


ALTER TABLE agent_db_app_public.recipes 
  ADD COLUMN name text;

