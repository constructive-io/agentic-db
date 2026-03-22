-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".message_chunks 
  DROP COLUMN entity_id RESTRICT;


