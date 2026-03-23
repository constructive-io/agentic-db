-- Revert: schemas/agentic_db_invites_public/tables/invites/constraints/invites_email_sender_id_key/constraint


ALTER TABLE agentic_db_invites_public.invites 
  DROP CONSTRAINT invites_email_sender_id_key;


