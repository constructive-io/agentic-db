-- Revert: schemas/agentic_db_invites_public/tables/org_invites/columns/updated_at/alterations/alt0000003648


ALTER TABLE agentic_db_invites_public.org_invites 
  ALTER COLUMN updated_at DROP DEFAULT;


