-- Revert: schemas/agentic_db_app_public/tables/memories/columns/embedding_text/column


ALTER TABLE agentic_db_app_public.memories 
  DROP COLUMN embedding_text RESTRICT;


