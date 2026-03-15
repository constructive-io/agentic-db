-- Deploy: schemas/agent_db_status_public/tables/app_achievements/alterations/alt0000000175
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_achievements/table


ALTER TABLE agent_db_status_public.app_achievements 
  DISABLE ROW LEVEL SECURITY;

