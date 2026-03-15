-- Deploy: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/constraints/app_levels_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-status-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-status-public/tables/app_levels/table


ALTER TABLE "agent-os-1773551593867-bac64076-status-public".app_levels 
  ADD CONSTRAINT app_levels_pkey PRIMARY KEY (id);

