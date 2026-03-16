-- Deploy: schemas/agent_db_status_public/tables/org_steps/alterations/alt0000001345
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_status_public/schema
-- requires: schemas/agent_db_status_public/tables/org_steps/table


ALTER TABLE "agent_db_status_public".org_steps 
  DISABLE ROW LEVEL SECURITY;

