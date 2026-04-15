-- Revert: schemas/agentic_db_invites_public/tables/app_claimed_invites/constraints/app_claimed_invites_receiver_id_fkey/constraint


ALTER TABLE agentic_db_invites_public.app_claimed_invites 
  DROP CONSTRAINT app_claimed_invites_receiver_id_fkey;


