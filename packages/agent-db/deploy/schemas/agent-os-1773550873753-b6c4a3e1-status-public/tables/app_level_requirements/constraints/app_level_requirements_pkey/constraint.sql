-- Deploy: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/constraints/app_level_requirements_pkey/constraint
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/schema
-- requires: schemas/agent-os-1773550873753-b6c4a3e1-status-public/tables/app_level_requirements/table


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-status-public".app_level_requirements 
  ADD CONSTRAINT app_level_requirements_pkey PRIMARY KEY (id);

