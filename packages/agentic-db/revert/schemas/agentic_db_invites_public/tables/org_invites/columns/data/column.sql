-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/data/column


ALTER TABLE agentic_db_invites_public.org_invites 
  DROP COLUMN data RESTRICT;


