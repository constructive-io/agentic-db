-- Revert: schemas/agentic_db_app_public/tables/code_chunks/columns/entity_id/alterations/alt0000001616


ALTER TABLE "agentic_db_app_public".code_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


