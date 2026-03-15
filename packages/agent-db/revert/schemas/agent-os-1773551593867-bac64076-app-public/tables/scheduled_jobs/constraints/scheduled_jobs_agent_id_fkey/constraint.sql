-- Revert: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/constraints/scheduled_jobs_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  DROP CONSTRAINT scheduled_jobs_agent_id_fkey;


