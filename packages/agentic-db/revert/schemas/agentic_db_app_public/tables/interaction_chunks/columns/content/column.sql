-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/content/column


ALTER TABLE agentic_db_app_public.interaction_chunks 
  DROP COLUMN content RESTRICT;


