-- Deploy: schemas/agent_db_invites_public/tables/claimed_invites/columns/receiver_id/column
-- made with <3 @ constructive.io

-- requires: schemas/agent_db_invites_public/schema
-- requires: schemas/agent_db_invites_public/tables/claimed_invites/table


ALTER TABLE "agent_db_invites_public".claimed_invites 
  ADD COLUMN receiver_id uuid;

