-- Revert: schemas/agentic_db_status_public/tables/org_level_requirements/columns/updated_at/column


ALTER TABLE "agentic_db_status_public".org_level_requirements 
  DROP COLUMN updated_at RESTRICT;


