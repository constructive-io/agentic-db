-- Revert: schemas/agentic_db_app_public/tables/deal_notes/columns/entity_id/column


ALTER TABLE agentic_db_app_public.deal_notes 
  DROP COLUMN entity_id RESTRICT;


