-- Revert: schemas/agentic_db_limits_public/tables/app_limits/columns/id/column


ALTER TABLE "agentic_db_limits_public".app_limits 
  DROP COLUMN id RESTRICT;


