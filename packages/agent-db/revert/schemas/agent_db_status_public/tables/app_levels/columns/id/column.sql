-- Revert: schemas/agent_db_status_public/tables/app_levels/columns/id/column


ALTER TABLE "agent_db_status_public".app_levels 
  DROP COLUMN id RESTRICT;


