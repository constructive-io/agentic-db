-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/interaction_id/column


ALTER TABLE agentic_db_app_public.interaction_chunks 
  DROP COLUMN interaction_id RESTRICT;


