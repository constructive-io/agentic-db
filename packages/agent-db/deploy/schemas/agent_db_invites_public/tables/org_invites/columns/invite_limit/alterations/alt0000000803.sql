-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/invite_limit/alterations/alt0000000803
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/invite_limit/column


ALTER TABLE agent_db_invites_public.org_invites 
  ALTER COLUMN invite_limit SET NOT NULL;

