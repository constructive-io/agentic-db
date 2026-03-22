-- Revert: schemas/agentic_db_invites_public/tables/invites/columns/multiple/column


ALTER TABLE agentic_db_invites_public.invites 
  DROP COLUMN multiple RESTRICT;


