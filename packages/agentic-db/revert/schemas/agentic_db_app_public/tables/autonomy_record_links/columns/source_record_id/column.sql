-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/source_record_id/column


ALTER TABLE "agentic_db_app_public".autonomy_record_links 
  DROP COLUMN source_record_id RESTRICT;


