-- Revert: schemas/agentic_db_app_public/tables/chat_chunks/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".chat_chunks 
  DROP COLUMN entity_id RESTRICT;


