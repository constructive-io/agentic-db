-- Revert: schemas/agentic_db_limits_public/tables/org_limit_defaults/columns/name/column


ALTER TABLE "agentic_db_limits_public".org_limit_defaults 
  DROP COLUMN name RESTRICT;


