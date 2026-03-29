-- Revert: schemas/agentic_db_app_public/tables/deal_notes/columns/deal_id/column


ALTER TABLE agentic_db_app_public.deal_notes 
  DROP COLUMN deal_id RESTRICT;


