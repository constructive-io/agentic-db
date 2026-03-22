-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/columns/entity_id/alterations/alt0000005722


ALTER TABLE agentic_db_app_public.interaction_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


