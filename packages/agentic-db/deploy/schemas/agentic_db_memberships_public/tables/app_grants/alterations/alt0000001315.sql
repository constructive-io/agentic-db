-- Deploy: schemas/agentic_db_memberships_public/tables/app_grants/alterations/alt0000001315
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/app_grants/table


ALTER TABLE agentic_db_memberships_public.app_grants 
  DISABLE ROW LEVEL SECURITY;

