-- Revert: schemas/agentic_db_app_public/tables/blueprint_chunks/columns/id/column


ALTER TABLE agentic_db_app_public.blueprint_chunks 
  DROP COLUMN id RESTRICT;


