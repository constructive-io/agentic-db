-- Deploy: schemas/agent_db_app_public/tables/chunks/columns/start_line/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/chunks/table
-- requires: schemas/agent_db_app_public/tables/chunks/columns/content/alterations/alt0000001361


ALTER TABLE agent_db_app_public.chunks 
  ADD COLUMN start_line int;

