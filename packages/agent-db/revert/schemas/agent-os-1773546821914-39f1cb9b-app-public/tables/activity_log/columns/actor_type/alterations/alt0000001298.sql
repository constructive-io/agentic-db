-- Revert: schemas/agent-os-1773546821914-39f1cb9b-app-public/tables/activity_log/columns/actor_type/alterations/alt0000001298


ALTER TABLE "agent-os-1773546821914-39f1cb9b-app-public".activity_log 
  ALTER COLUMN actor_type DROP NOT NULL;


