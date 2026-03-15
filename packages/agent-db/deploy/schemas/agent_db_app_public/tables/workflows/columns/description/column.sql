-- Deploy: schemas/agent_db_app_public/tables/workflows/columns/description/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/workflows/table
-- requires: schemas/agent_db_app_public/tables/workflows/columns/name/alterations/alt0000001232


ALTER TABLE agent_db_app_public.workflows 
  ADD COLUMN description text;

