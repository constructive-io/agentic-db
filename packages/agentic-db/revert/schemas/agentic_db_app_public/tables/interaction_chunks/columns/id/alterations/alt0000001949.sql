-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/id/alterations/alt0000001949


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  ALTER COLUMN id DROP NOT NULL;


