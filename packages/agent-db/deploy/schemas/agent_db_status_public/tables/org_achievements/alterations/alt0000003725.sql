-- Deploy: schemas/agent_db_status_public/tables/org_achievements/alterations/alt0000003725
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_achievements/table


ALTER TABLE "agent_db_status_public".org_achievements 
  DISABLE ROW LEVEL SECURITY;

