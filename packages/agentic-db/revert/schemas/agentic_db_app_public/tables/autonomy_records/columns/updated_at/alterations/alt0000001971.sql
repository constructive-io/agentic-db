-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/updated_at/alterations/alt0000001971


ALTER TABLE "agentic_db_app_public".autonomy_records 
  ALTER COLUMN updated_at DROP NOT NULL;


