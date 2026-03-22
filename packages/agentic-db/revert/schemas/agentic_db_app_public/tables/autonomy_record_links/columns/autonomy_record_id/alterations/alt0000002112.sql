-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_links/columns/autonomy_record_id/alterations/alt0000002112


ALTER TABLE "agentic_db_app_public".autonomy_record_links 
  ALTER COLUMN autonomy_record_id DROP NOT NULL;


