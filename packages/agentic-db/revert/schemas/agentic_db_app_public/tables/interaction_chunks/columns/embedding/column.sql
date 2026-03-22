-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/embedding/column


ALTER TABLE agentic_db_app_public.interaction_chunks 
  DROP COLUMN embedding RESTRICT;


