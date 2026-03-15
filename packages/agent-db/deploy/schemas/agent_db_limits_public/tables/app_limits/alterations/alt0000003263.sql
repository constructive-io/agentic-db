-- Deploy: schemas/agent_db_limits_public/tables/app_limits/alterations/alt0000003263
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/app_limits/table


ALTER TABLE "agent_db_limits_public".app_limits 
  DISABLE ROW LEVEL SECURITY;

