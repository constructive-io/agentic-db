-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/expires_at/alterations/alt0000000814
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/expires_at/column



ALTER TABLE agent_db_invites_public.org_invites 
    ALTER COLUMN expires_at SET DEFAULT NOW() + interval '6 months';

