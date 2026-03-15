-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_projects/columns/entity_id/alterations/alt0000003188


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goal_projects 
  ALTER COLUMN entity_id DROP NOT NULL;


