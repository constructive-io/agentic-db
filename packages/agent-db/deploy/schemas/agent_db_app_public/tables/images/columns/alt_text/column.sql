-- Deploy: schemas/agent_db_app_public/tables/images/columns/alt_text/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/images/table
-- requires: schemas/agent_db_app_public/tables/images/columns/meta/column


ALTER TABLE agent_db_app_public.images 
  ADD COLUMN alt_text text;

