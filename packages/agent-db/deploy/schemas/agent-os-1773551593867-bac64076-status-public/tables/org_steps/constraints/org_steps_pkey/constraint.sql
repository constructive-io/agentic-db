-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/constraints/org_steps_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/org_steps/table


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".org_steps 
  ADD CONSTRAINT org_steps_pkey PRIMARY KEY (id);

