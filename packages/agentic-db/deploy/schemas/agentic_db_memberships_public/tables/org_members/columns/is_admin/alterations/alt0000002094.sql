-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/columns/is_admin/alterations/alt0000002094
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_memberships_public/tables/org_members/columns/is_admin/column


ALTER TABLE agentic_db_memberships_public.org_members 
  ALTER COLUMN is_admin SET NOT NULL;

