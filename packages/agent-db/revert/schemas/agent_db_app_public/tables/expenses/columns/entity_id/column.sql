-- Revert: schemas/agent_db_app_public/tables/expenses/columns/entity_id/column


ALTER TABLE "agent_db_app_public".expenses 
  DROP COLUMN entity_id RESTRICT;


