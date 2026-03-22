-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/entity_id/alterations/alt0000002693


ALTER TABLE "agentic_db_app_public".autonomy_record_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


