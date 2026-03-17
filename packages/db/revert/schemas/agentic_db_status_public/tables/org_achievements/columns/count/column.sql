-- Revert: schemas/agentic_db_status_public/tables/org_achievements/columns/count/column


ALTER TABLE "agentic_db_status_public".org_achievements 
  DROP COLUMN count RESTRICT;


