-- Revert: schemas/agentic_db_app_public/tables/list_chunks/columns/entity_id/alterations/alt0000002689


ALTER TABLE "agentic_db_app_public".list_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


