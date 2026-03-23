-- Revert: schemas/agentic_db_app_public/tables/autonomy_records/columns/tags/column


ALTER TABLE "agentic_db_app_public".autonomy_records 
  DROP COLUMN tags RESTRICT;


