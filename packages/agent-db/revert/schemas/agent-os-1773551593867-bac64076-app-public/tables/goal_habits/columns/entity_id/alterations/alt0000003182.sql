-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/goal_habits/columns/entity_id/alterations/alt0000003182


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goal_habits 
  ALTER COLUMN entity_id DROP NOT NULL;


