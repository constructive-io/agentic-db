-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/id/alterations/alt0000015839


ALTER TABLE agentic_db_app_public.autonomy_records 
  ALTER COLUMN id DROP NOT NULL;


