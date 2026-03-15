-- Deploy: schemas/agent_db_app_public/tables/tools/columns/auth_method/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/tools/table
-- requires: schemas/agent_db_app_public/tables/tools/columns/endpoint/column


ALTER TABLE agent_db_app_public.tools 
  ADD COLUMN auth_method text;

