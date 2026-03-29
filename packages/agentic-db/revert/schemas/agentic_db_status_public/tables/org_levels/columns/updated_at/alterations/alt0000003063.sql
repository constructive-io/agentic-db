-- Revert: schemas/agentic_db_status_public/tables/org_levels/columns/updated_at/alterations/alt0000003063


ALTER TABLE agentic_db_status_public.org_levels 
  ALTER COLUMN updated_at DROP DEFAULT;


