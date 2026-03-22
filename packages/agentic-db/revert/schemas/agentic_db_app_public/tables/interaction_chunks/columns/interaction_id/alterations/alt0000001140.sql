-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/interaction_id/alterations/alt0000001140


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  ALTER COLUMN interaction_id DROP NOT NULL;


