-- Revert: schemas/agentic_db_status_public/tables/org_levels/columns/created_at/alterations/alt0000001699


ALTER TABLE agentic_db_status_public.org_levels 
  ALTER COLUMN created_at DROP DEFAULT;


