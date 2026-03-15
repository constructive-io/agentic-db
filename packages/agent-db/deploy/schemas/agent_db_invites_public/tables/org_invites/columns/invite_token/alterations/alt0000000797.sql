-- Deploy: schemas/agent_db_invites_public/tables/org_invites/columns/invite_token/alterations/alt0000000797
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/org_invites/table
-- requires: schemas/agent_db_invites_public/tables/org_invites/columns/invite_token/column


ALTER TABLE agent_db_invites_public.org_invites 
  ALTER COLUMN invite_token SET NOT NULL;

