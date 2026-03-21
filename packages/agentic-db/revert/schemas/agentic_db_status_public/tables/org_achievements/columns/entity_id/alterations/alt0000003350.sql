-- Revert: schemas/agentic_db_status_public/tables/org_achievements/columns/entity_id/alterations/alt0000003350


ALTER TABLE agentic_db_status_public.org_achievements 
  ALTER COLUMN entity_id DROP NOT NULL;


