-- Deploy: schemas/agentic_db_memberships_public/tables/org_memberships/columns/is_banned/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_memberships/table


ALTER TABLE agentic_db_memberships_public.org_memberships 
  ADD COLUMN is_banned boolean;

