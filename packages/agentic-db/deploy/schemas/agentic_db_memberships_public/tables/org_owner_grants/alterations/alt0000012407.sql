-- Deploy: schemas/agentic_db_memberships_public/tables/org_owner_grants/alterations/alt0000012407
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_owner_grants/table


ALTER TABLE agentic_db_memberships_public.org_owner_grants 
  DISABLE ROW LEVEL SECURITY;

