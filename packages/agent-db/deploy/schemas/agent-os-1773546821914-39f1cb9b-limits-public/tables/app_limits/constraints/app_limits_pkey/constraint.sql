-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/constraints/app_limits_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limits/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limits 
  ADD CONSTRAINT app_limits_pkey PRIMARY KEY (id);

