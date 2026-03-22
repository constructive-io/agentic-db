-- Revert: schemas/agentic_db_app_public/tables/autonomy_record_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".autonomy_record_chunks 
  DROP COLUMN entity_id RESTRICT;


