-- Revert: schemas/agentic_db_app_public/tables/deal_notes/columns/deal_id/alterations/alt0000002067


ALTER TABLE "agentic_db_app_public".deal_notes 
  ALTER COLUMN deal_id DROP NOT NULL;


