-- Revert: schemas/agentic_db_status_public/tables/org_levels/columns/name/alterations/alt0000003057


ALTER TABLE agentic_db_status_public.org_levels 
  ALTER COLUMN name DROP NOT NULL;


