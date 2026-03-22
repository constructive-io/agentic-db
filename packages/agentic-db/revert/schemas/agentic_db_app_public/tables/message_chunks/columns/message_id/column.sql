-- Revert: schemas/agentic_db_app_public/tables/message_chunks/columns/message_id/column


ALTER TABLE "agentic_db_app_public".message_chunks 
  DROP COLUMN message_id RESTRICT;


