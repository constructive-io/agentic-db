-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/email/column


ALTER TABLE agentic_db_invites_public.invites 
  DROP COLUMN email RESTRICT;


