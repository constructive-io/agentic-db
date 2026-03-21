-- Deploy: schemas/agentic_db_memberships_public/tables/org_grants/columns/created_at/alterations/alt0000003263
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/columns/created_at/column


ALTER TABLE agentic_db_memberships_public.org_grants 
  ALTER COLUMN created_at SET DEFAULT now();

