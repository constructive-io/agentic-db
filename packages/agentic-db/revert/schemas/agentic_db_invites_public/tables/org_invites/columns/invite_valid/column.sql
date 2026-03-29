-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/invite_valid/column


ALTER TABLE agentic_db_invites_public.org_invites 
  DROP COLUMN invite_valid RESTRICT;


