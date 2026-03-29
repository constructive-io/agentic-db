-- Deploy: schemas/agentic_db_invites_public/tables/org_invites/columns/expires_at/alterations/alt0000003345
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_invites_public/schema
-- requires: schemas/agentic_db_invites_public/tables/org_invites/table
-- requires: schemas/agentic_db_invites_public/tables/org_invites/columns/expires_at/column



ALTER TABLE agentic_db_invites_public.org_invites 
    ALTER COLUMN expires_at SET DEFAULT NOW() + interval '6 months';

