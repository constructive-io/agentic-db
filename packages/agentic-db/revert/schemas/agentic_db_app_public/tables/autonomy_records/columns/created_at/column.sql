-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/created_at/column


ALTER TABLE "agentic_db_app_public".autonomy_records 
  DROP COLUMN created_at RESTRICT;


