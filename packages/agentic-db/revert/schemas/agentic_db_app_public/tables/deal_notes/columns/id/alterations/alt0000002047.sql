-- Revert: schemas/agentic_db_app_public/tables/deal_notes/columns/id/alterations/alt0000002047


ALTER TABLE "agentic_db_app_public".deal_notes 
  ALTER COLUMN id DROP NOT NULL;


