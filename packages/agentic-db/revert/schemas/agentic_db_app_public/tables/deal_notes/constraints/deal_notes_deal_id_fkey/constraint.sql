-- Revert: schemas/agentic_db_app_public/tables/deal_notes/constraints/deal_notes_deal_id_fkey/constraint


ALTER TABLE agentic_db_app_public.deal_notes 
  DROP CONSTRAINT deal_notes_deal_id_fkey;


