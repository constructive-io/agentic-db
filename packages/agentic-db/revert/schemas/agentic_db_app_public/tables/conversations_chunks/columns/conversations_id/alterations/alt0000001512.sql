-- Revert: schemas/agentic_db_app_public/tables/conversations_chunks/columns/conversations_id/alterations/alt0000001512


ALTER TABLE "agentic_db_app_public".conversations_chunks 
  ALTER COLUMN conversations_id DROP NOT NULL;


