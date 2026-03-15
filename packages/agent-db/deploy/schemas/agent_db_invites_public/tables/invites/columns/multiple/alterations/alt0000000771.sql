-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/multiple/alterations/alt0000000771
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/multiple/column



ALTER TABLE agent_db_invites_public.invites 
    ALTER COLUMN multiple SET DEFAULT FALSE;

