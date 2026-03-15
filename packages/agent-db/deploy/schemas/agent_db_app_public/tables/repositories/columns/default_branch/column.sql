-- Deploy: schemas/agent_db_app_public/tables/repositories/columns/default_branch/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_app_public/schema
-- requires: schemas/agent_db_app_public/tables/repositories/table
-- requires: schemas/agent_db_app_public/tables/repositories/columns/description/column


ALTER TABLE agent_db_app_public.repositories 
  ADD COLUMN default_branch text;

