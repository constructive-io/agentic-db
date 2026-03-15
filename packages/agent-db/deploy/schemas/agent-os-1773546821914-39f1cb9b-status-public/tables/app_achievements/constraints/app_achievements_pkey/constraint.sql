-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/constraints/app_achievements_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-status-public/tables/app_achievements/table


ALTER TABLE "agent-os-1773546821914-39f1cb9b-status-public".app_achievements 
  ADD CONSTRAINT app_achievements_pkey PRIMARY KEY (id);

