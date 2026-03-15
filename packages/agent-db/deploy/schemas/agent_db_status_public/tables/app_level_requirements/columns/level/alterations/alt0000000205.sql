-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/columns/level/alterations/alt0000000205
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/columns/level/column


ALTER TABLE agent_db_status_public.app_level_requirements 
  ALTER COLUMN level SET NOT NULL;

