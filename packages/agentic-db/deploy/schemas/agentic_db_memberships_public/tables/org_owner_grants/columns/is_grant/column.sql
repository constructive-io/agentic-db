-- Deploy: schemas/agentic_db_memberships_public/tables/org_owner_grants/columns/is_grant/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_owner_grants/table


ALTER TABLE agentic_db_memberships_public.org_owner_grants 
  ADD COLUMN is_grant boolean;

