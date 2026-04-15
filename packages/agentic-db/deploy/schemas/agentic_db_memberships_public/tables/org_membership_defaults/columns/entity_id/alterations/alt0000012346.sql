-- Deploy: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/entity_id/alterations/alt0000012346
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_memberships_public/schema
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/table
-- requires: schemas/agentic_db_memberships_public/tables/org_membership_defaults/columns/entity_id/column


ALTER TABLE agentic_db_memberships_public.org_membership_defaults 
  ALTER COLUMN entity_id SET NOT NULL;

