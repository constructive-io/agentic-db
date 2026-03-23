-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/alterations/alt0000000311
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


ALTER TABLE "agentic_db_memberships_public".org_memberships 
  DISABLE ROW LEVEL SECURITY;

