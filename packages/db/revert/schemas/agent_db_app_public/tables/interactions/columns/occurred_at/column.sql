-- Revert: schemas/agent_db_app_public/tables/interactions/columns/occurred_at/column


ALTER TABLE "agent_db_app_public".interactions 
  DROP COLUMN occurred_at RESTRICT;


