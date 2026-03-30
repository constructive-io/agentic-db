-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/created_at/alterations/alt0000001969


ALTER TABLE "agentic_db_app_public".autonomy_records 
  ALTER COLUMN created_at DROP NOT NULL;


