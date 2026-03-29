-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_token/alterations/alt0000010288
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_token/column


ALTER TABLE agentic_db_invites_public.org_invites 
  ALTER COLUMN invite_token SET NOT NULL;

