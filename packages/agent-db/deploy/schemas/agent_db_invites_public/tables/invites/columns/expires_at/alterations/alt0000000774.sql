-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/expires_at/alterations/alt0000000774
-- made with <3 @ launchql.com

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table
-- requires: schemas/agent_db_invites_public/tables/invites/columns/expires_at/column


ALTER TABLE agent_db_invites_public.invites 
  ALTER COLUMN expires_at SET NOT NULL;

