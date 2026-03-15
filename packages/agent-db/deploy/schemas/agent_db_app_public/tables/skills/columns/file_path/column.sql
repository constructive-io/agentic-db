-- Deploy: schemas/agent_db_app_public/tables/skills/columns/file_path/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/skills/table
-- requires: schemas/agent_db_app_public/tables/skills/columns/always_load/alterations/alt0000001082


ALTER TABLE agent_db_app_public.skills 
  ADD COLUMN file_path text;

