-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/image_url/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/source_url/column


ALTER TABLE agent_db_app_public.recipes 
  ADD COLUMN image_url text;

