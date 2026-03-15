-- Deploy: schemas/agent_db_status_public/tables/org_levels/alterations/alt0000003739
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_levels/table


ALTER TABLE "agent_db_status_public".org_levels 
  DISABLE ROW LEVEL SECURITY;

