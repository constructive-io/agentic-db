-- Deploy: schemas/agent_db_invites_public/tables/invites/columns/invite_count/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/invites/table


ALTER TABLE agent_db_invites_public.invites 
  ADD COLUMN invite_count int;

