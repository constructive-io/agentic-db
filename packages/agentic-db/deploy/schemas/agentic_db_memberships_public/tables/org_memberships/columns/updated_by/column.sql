-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/updated_by/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ADD COLUMN updated_by uuid;

