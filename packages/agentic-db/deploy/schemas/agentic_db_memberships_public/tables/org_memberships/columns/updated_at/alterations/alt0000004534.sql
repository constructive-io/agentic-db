-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/updated_at/alterations/alt0000004534
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/updated_at/column


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN updated_at SET DEFAULT now();

