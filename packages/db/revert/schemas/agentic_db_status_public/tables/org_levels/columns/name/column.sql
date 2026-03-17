-- Revert: schemas/agentic_db_status_public/tables/org_levels/columns/name/column


ALTER TABLE "agentic_db_status_public".org_levels 
  DROP COLUMN name RESTRICT;


