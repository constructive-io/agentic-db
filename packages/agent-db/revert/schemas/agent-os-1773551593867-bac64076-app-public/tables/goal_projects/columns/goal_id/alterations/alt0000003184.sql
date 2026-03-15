-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_projects/columns/goal_id/alterations/alt0000003184


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goal_projects 
  ALTER COLUMN goal_id DROP NOT NULL;


