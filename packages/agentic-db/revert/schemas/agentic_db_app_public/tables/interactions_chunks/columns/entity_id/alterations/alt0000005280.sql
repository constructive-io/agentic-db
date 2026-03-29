-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/columns/entity_id/alterations/alt0000005280


ALTER TABLE agentic_db_app_public.interactions_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


