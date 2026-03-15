-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/multiple/alterations/alt0000000810
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/multiple/column



ALTER TABLE agent_db_invites_public.org_invites 
    ALTER COLUMN multiple SET DEFAULT FALSE;

