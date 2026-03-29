-- Deploy: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/id/alterations/alt0000002922
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_admin_grants/table
-- requires: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/id/column


ALTER TABLE agentic_db_memberships_public.org_admin_grants 
  ALTER COLUMN id SET NOT NULL;

