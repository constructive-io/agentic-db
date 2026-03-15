-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/constraints/app_limit_defaults_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-limits-public/tables/app_limit_defaults/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-limits-public".app_limit_defaults 
  ADD CONSTRAINT app_limit_defaults_pkey PRIMARY KEY (id);

