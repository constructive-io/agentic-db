-- Revert: schemas/agentic_db_app_public/tables/place_chunks/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.place_chunks 
  DROP COLUMN embedding_text RESTRICT;


