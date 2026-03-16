-- Deploy: schemas/agent_db_status_public/tables/app_levels/alterations/alt0000001040
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/app_levels/table


ALTER TABLE "agent_db_status_public".app_levels 
  DISABLE ROW LEVEL SECURITY;

