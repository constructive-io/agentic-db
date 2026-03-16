-- Revert: schemas/agent_db_app_public/tables/goal_projects/columns/entity_id/alterations/alt0000002379


ALTER TABLE "agent_db_app_public".goal_projects 
  ALTER COLUMN entity_id DROP NOT NULL;


