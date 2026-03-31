-- Deploy: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/entity_id/alterations/alt0000002946
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_claimed_invites/columns/entity_id/column


ALTER TABLE agentic_db_invites_public.org_claimed_invites 
  ALTER COLUMN entity_id SET NOT NULL;

