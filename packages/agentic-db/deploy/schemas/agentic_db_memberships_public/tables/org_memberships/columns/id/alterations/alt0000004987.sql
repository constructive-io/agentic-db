-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/id/alterations/alt0000004987
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/columns/id/column


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ALTER COLUMN id SET NOT NULL;

