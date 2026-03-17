-- Revert: schemas/agentic_db_status_public/tables/org_levels/columns/id/column


ALTER TABLE "agentic_db_status_public".org_levels 
  DROP COLUMN id RESTRICT;


