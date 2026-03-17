-- Revert: schemas/agentic_db_app_public/tables/workflow_steps/columns/action_type/alterations/alt0000001225


ALTER TABLE "agentic_db_app_public".workflow_steps 
  ALTER COLUMN action_type DROP NOT NULL;


