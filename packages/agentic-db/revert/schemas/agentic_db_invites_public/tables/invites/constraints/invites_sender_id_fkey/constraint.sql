-- Revert: schemas/agentic_db_invites_public/tables/invites/constraints/invites_sender_id_fkey/constraint


ALTER TABLE agentic_db_invites_public.invites 
  DROP CONSTRAINT invites_sender_id_fkey;


