-- Deploy: schemas/agentic_db_memberships_public/tables/org_members/columns/entity_id/alterations/alt0000004604
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_members/table
-- requires: schemas/agentic_db_memberships_public/tables/org_members/columns/entity_id/column


ALTER TABLE agentic_db_memberships_public.org_members 
  ALTER COLUMN entity_id SET NOT NULL;

