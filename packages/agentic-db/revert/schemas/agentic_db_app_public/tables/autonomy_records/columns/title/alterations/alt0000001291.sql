-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/title/alterations/alt0000001291


ALTER TABLE agentic_db_app_public.autonomy_records 
  ALTER COLUMN title DROP NOT NULL;


