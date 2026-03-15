-- Deploy: schemas/agent_db_app_public/tables/recipes/columns/tags/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/recipes/table
-- requires: schemas/agent_db_app_public/tables/recipes/columns/image_url/column


ALTER TABLE agent_db_app_public.recipes 
  ADD COLUMN tags citext[];

