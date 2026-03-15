-- Deploy: schemas/agent_db_app_public/tables/tools/columns/tags/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/is_active/alterations/alt0000001223


ALTER TABLE agent_db_app_public.tools 
  ADD COLUMN tags citext[];

