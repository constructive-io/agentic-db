-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/updated_at/alterations/alt0000001362


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


