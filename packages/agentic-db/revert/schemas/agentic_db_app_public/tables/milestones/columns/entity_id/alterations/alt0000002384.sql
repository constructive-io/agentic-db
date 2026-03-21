-- Revert: schemas/agentic_db_app_public/tables/milestones/columns/entity_id/alterations/alt0000002384


ALTER TABLE "agentic_db_app_public".milestones 
  ALTER COLUMN entity_id DROP NOT NULL;


