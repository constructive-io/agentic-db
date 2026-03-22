-- Revert: schemas/agentic_db_app_public/tables/conversation_chunks/columns/entity_id/alterations/alt0000002610


ALTER TABLE agentic_db_app_public.conversation_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


