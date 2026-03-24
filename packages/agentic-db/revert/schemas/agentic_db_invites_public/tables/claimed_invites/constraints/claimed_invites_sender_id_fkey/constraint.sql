-- Revert: schemas/agentic_db_invites_public/tables/claimed_invites/constraints/claimed_invites_sender_id_fkey/constraint


ALTER TABLE agentic_db_invites_public.claimed_invites 
  DROP CONSTRAINT claimed_invites_sender_id_fkey;


