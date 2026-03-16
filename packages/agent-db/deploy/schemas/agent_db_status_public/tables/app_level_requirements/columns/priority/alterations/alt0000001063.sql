-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/columns/priority/alterations/alt0000001063
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/columns/priority/column


ALTER TABLE "agent_db_status_public".app_level_requirements 
  ALTER COLUMN priority SET NOT NULL;

