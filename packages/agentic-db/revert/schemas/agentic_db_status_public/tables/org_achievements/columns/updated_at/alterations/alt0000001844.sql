-- Revert: schemas/agentic_db_status_public/tables/org_achievements/columns/updated_at/alterations/alt0000001844


ALTER TABLE agentic_db_status_public.org_achievements 
  ALTER COLUMN updated_at DROP DEFAULT;


