-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/invite_limit/alterations/alt0000002476


ALTER TABLE agentic_db_invites_public.invites 
  ALTER COLUMN invite_limit DROP NOT NULL;


