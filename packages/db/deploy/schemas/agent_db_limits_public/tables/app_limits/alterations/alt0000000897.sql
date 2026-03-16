-- Deploy: schemas/agent_db_limits_public/tables/app_limits/alterations/alt0000000897
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/table


ALTER TABLE "agent_db_limits_public".app_limits 
  DISABLE ROW LEVEL SECURITY;

