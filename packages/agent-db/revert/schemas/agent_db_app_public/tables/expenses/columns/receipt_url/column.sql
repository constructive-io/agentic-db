-- Revert: schemas/agent_db_app_public/tables/expenses/columns/receipt_url/column


ALTER TABLE "agent_db_app_public".expenses 
  DROP COLUMN receipt_url RESTRICT;


