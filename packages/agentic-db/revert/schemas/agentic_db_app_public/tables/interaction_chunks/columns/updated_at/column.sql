-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/updated_at/column


ALTER TABLE agentic_db_app_public.interaction_chunks 
  DROP COLUMN updated_at RESTRICT;


