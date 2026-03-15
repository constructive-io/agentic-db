-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/columns/name/alterations/alt0000000203
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/columns/name/column


ALTER TABLE agent_db_status_public.app_level_requirements 
  ALTER COLUMN name SET NOT NULL;

