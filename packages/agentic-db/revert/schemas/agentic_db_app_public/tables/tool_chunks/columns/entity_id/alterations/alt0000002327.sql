-- Revert: schemas/agentic_db_app_public/tables/tool_chunks/columns/entity_id/alterations/alt0000002327


ALTER TABLE "agentic_db_app_public".tool_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


