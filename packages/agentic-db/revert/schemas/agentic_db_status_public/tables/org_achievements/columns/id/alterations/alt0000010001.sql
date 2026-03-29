-- Revert: schemas/agentic_db_status_public/tables/org_achievements/columns/id/alterations/alt0000010001


ALTER TABLE agentic_db_status_public.org_achievements 
  ALTER COLUMN id DROP NOT NULL;


