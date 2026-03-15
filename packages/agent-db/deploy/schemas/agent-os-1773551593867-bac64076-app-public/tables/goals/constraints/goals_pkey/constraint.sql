-- Deploy: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/constraints/goals_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-app-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/goals/table
-- requires: schemas/agent-os-1773551593867-bac64076-app-public/tables/skills/columns/intent_trigger/column


ALTER TABLE "agent-os-1773551593867-bac64076-app-public".goals 
  ADD CONSTRAINT goals_pkey PRIMARY KEY (id);

