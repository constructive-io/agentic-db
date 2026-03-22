-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/id/column


ALTER TABLE agentic_db_app_public.interaction_chunks 
  DROP COLUMN id RESTRICT;


