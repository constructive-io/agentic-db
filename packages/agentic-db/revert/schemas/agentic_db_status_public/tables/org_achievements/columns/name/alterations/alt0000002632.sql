-- Revert: schemas/agentic_db_status_public/tables/org_achievements/columns/name/alterations/alt0000002632


ALTER TABLE agentic_db_status_public.org_achievements 
  ALTER COLUMN name DROP NOT NULL;


