-- Revert: schemas/agent_db_app_public/tables/sessions/columns/extracted_memory_ids/column


ALTER TABLE "agent_db_app_public".sessions 
  DROP COLUMN extracted_memory_ids RESTRICT;


