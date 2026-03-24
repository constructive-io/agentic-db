-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/invite_valid/alterations/alt0000002084


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN invite_valid DROP NOT NULL;


