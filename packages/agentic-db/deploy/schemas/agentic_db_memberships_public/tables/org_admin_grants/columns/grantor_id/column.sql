-- Deploy: schemas/agentic_db_memberships_public/tables/org_admin_grants/columns/grantor_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_admin_grants/table


ALTER TABLE agentic_db_memberships_public.org_admin_grants 
  ADD COLUMN grantor_id uuid;

