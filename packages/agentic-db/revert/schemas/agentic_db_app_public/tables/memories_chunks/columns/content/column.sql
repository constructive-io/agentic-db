-- Revert: schemas/agentic_db_app_public/tables/memories_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.memories_chunks 
  DROP COLUMN content RESTRICT;


