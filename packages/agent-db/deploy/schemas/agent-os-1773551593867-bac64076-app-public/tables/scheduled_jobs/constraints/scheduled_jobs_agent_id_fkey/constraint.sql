-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/constraints/scheduled_jobs_agent_id_fkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/agents/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/scheduled_jobs/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/processes/constraints/processes_agent_id_fkey/constraint


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".scheduled_jobs 
  ADD CONSTRAINT scheduled_jobs_agent_id_fkey 
    FOREIGN KEY(agent_id) 
    REFERENCES "agent-os-1773551593867-bac64076-app-public".agents (id) 
    ON DELETE CASCADE;

