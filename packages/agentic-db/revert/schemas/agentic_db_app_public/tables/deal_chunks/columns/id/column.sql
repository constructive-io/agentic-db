-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/id/column


ALTER TABLE "agentic_db_app_public".deal_chunks 
  DROP COLUMN id RESTRICT;


