-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/count/column


ALTER TABLE "agentic_db_status_public".org_steps 
  DROP COLUMN count RESTRICT;


