-- Revert: schemas/agent_db_app_public/tables/expenses/constraints/expenses_pkey/constraint


ALTER TABLE "agent_db_app_public".expenses 
  DROP CONSTRAINT expenses_pkey;


