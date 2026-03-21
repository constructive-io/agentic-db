-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/columns/entity_id/column


ALTER TABLE agentic_db_app_public.workflow_runs 
  DROP COLUMN entity_id RESTRICT;


