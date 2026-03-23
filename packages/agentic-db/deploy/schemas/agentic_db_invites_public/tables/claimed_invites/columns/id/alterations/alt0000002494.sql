-- Deploy: schemas/agentic_db_invites_public/tables/claimed_invites/columns/id/alterations/alt0000002494
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/table
-- requires: schemas/agentic_db_invites_public/tables/claimed_invites/columns/id/column



ALTER TABLE agentic_db_invites_public.claimed_invites 
    ALTER COLUMN id SET DEFAULT uuidv7();

