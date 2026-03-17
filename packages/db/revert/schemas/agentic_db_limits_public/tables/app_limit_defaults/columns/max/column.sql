-- Revert: schemas/agentic_db_limits_public/tables/app_limit_defaults/columns/max/column


ALTER TABLE "agentic_db_limits_public".app_limit_defaults 
  DROP COLUMN max RESTRICT;


