-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/created_at/alterations/alt0000003647


ALTER TABLE agentic_db_invites_public.org_invites 
  ALTER COLUMN created_at DROP DEFAULT;


