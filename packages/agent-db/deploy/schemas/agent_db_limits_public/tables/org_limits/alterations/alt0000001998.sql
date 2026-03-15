-- Deploy: schemas/agent_db_limits_public/tables/org_limits/alterations/alt0000001998
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_limits_public/schema
-- requires: schemas/agent_db_limits_public/tables/org_limits/table


ALTER TABLE "agent_db_limits_public".org_limits 
  DISABLE ROW LEVEL SECURITY;

