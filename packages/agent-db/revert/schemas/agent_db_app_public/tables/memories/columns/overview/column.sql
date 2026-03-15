-- Revert: schemas/agent_db_app_public/tables/memories/columns/overview/column


ALTER TABLE "agent_db_app_public".memories 
  DROP COLUMN overview RESTRICT;


