-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/entity_id/alterations/alt0000001805


ALTER TABLE "agentic_db_app_public".deal_chunks 
  ALTER COLUMN entity_id DROP NOT NULL;


