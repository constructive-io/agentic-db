-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_limit/alterations/alt0000002921
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_limit/column


ALTER TABLE agentic_db_invites_public.org_invites 
  ALTER COLUMN invite_limit SET NOT NULL;

