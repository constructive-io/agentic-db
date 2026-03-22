-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/content/alterations/alt0000001953


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  ALTER COLUMN content DROP NOT NULL;


