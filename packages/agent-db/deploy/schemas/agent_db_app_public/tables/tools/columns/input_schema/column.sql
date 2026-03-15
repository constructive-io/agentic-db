-- Deploy: schemas/agent_db_app_public/tables/tools/columns/input_schema/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/type/column


ALTER TABLE agent_db_app_public.tools 
  ADD COLUMN input_schema jsonb;

