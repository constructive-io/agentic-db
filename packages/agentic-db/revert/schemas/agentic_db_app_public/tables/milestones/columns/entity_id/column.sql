-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".milestones 
  DROP COLUMN entity_id RESTRICT;


