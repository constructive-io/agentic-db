-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/list_id/alterations/alt0000002718


ALTER TABLE "agentic_db_app_public".list_chunks 
  ALTER COLUMN list_id DROP NOT NULL;


