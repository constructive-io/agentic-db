-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/expires_at/alterations/alt0000000813
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/expires_at/column


ALTER TABLE agent_db_invites_public.org_invites 
  ALTER COLUMN expires_at SET NOT NULL;

