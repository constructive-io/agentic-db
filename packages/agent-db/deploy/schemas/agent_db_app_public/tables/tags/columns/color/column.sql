-- Deploy: schemas/agent_db_app_public/tables/tags/columns/color/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tags/table
-- requires: schemas/agent_db_app_public/tables/tags/columns/name/alterations/alt0000000936


ALTER TABLE agent_db_app_public.tags 
  ADD COLUMN color text;

