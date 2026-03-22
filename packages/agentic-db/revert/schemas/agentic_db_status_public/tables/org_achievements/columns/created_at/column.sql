-- Revert: schemas/agentic_db_status_public/tables/org_achievements/columns/created_at/column


ALTER TABLE agentic_db_status_public.org_achievements 
  DROP COLUMN created_at RESTRICT;


