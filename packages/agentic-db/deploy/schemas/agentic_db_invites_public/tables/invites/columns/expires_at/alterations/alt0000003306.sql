-- Deploy: schemas/agentic_db_invites_public/tables/invites/columns/expires_at/alterations/alt0000003306
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/invites/table
-- requires: schemas/agentic_db_invites_public/tables/invites/columns/expires_at/column



ALTER TABLE agentic_db_invites_public.invites 
    ALTER COLUMN expires_at SET DEFAULT NOW() + interval '6 months';

