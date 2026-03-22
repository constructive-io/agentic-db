-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/updated_at/column


ALTER TABLE "agentic_db_app_public".deal_chunks 
  DROP COLUMN updated_at RESTRICT;


