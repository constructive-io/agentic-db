-- Revert: schemas/agentic_db_app_public/tables/recipe_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.recipe_chunks 
  DROP COLUMN embedding_text RESTRICT;


