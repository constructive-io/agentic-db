-- Revert: schemas/agentic_db_status_public/tables/org_steps/columns/id/column


ALTER TABLE "agentic_db_status_public".org_steps 
  DROP COLUMN id RESTRICT;


