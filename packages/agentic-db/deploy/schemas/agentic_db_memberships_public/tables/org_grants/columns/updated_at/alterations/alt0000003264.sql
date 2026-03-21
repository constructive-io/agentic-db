-- Deploy: schemas/agentic_db_memberships_public/tables/org_grants/columns/updated_at/alterations/alt0000003264
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_grants/columns/updated_at/column


ALTER TABLE agentic_db_memberships_public.org_grants 
  ALTER COLUMN updated_at SET DEFAULT now();

