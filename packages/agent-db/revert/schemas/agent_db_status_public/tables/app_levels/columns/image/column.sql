-- Revert: schemas/agent_db_status_public/tables/app_levels/columns/image/column


ALTER TABLE "agent_db_status_public".app_levels 
  DROP COLUMN image RESTRICT;


