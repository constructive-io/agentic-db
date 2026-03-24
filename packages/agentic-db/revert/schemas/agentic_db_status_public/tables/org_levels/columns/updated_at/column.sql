-- Revert: schemas/agentic_db_status_public/tables/org_levels/columns/updated_at/column


ALTER TABLE "agentic_db_status_public".org_levels 
  DROP COLUMN updated_at RESTRICT;


