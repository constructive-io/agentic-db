-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/activity_log/columns/actor_type/alterations/alt0000002907


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".activity_log 
  ALTER COLUMN actor_type DROP NOT NULL;


