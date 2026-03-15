-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/multiple/column
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


ALTER TABLE agent_db_invites_public.invites 
  ADD COLUMN multiple boolean;

