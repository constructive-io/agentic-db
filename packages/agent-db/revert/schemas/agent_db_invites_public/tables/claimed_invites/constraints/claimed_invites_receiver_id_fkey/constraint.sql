-- Revert: schemas/agent_db_invites_public/tables/claimed_invites/constraints/claimed_invites_receiver_id_fkey/constraint


ALTER TABLE agent_db_invites_public.claimed_invites 
  DROP CONSTRAINT claimed_invites_receiver_id_fkey;


