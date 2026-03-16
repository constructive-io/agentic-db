-- Revert: schemas/agent_db_app_public/tables/expenses/columns/category/column


ALTER TABLE "agent_db_app_public".expenses 
  DROP COLUMN category RESTRICT;


