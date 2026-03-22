-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/invite_limit/column


ALTER TABLE agentic_db_invites_public.invites 
  DROP COLUMN invite_limit RESTRICT;


