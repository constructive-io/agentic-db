-- Deploy: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/constraints/app_limits_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/schema
-- requires: schemas/agent-os-1773551593867-bac64076-limits-public/tables/app_limits/table


ALTER TABLE "agent-os-1773551593867-bac64076-limits-public".app_limits 
  ADD CONSTRAINT app_limits_pkey PRIMARY KEY (id);

