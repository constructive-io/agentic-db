-- Revert: schemas/agentic_db_app_public/tables/workflow_runs/constraints/workflow_runs_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".workflow_runs 
  DROP CONSTRAINT workflow_runs_entity_id_fkey;


