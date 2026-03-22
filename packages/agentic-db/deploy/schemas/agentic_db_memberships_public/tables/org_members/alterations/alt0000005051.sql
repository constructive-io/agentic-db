-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/alterations/alt0000005051
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table


ALTER TABLE agentic_db_memberships_public.org_members 
  DISABLE ROW LEVEL SECURITY;

