-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/columns/id/alterations/alt0000000201
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/table
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/columns/id/column


ALTER TABLE agent_db_status_public.app_level_requirements 
  ALTER COLUMN id SET NOT NULL;

