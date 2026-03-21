-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/columns/entity_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table


ALTER TABLE agentic_db_memberships_public.org_members 
  ADD COLUMN entity_id uuid;

