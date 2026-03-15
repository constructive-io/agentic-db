-- Deploy: schemas/agent_db_status_public/tables/app_level_requirements/alterations/alt0000000199
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_level_requirements/table


ALTER TABLE agent_db_status_public.app_level_requirements 
  DISABLE ROW LEVEL SECURITY;

