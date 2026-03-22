-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/id/alterations/alt0000005720


ALTER TABLE agentic_db_app_public.interaction_chunks 
  ALTER COLUMN id DROP NOT NULL;


