-- Revert: schemas/agentic_db_status_public/tables/org_levels/columns/id/alterations/alt0000003055


ALTER TABLE agentic_db_status_public.org_levels 
  ALTER COLUMN id DROP NOT NULL;


