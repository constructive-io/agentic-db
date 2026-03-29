-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_valid/alterations/alt0000003332
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_valid/column



ALTER TABLE agentic_db_invites_public.org_invites 
    ALTER COLUMN invite_valid SET DEFAULT TRUE;

